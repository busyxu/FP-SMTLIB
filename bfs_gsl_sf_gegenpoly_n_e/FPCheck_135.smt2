(declare-fun b_ack!773 () (_ BitVec 64))
(declare-fun a_ack!775 () (_ BitVec 32))
(declare-fun c_ack!774 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!773) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!775 #x00000000)))
(assert (not (= #x00000000 a_ack!775)))
(assert (not (= #x00000001 a_ack!775)))
(assert (not (= #x00000002 a_ack!775)))
(assert (not (= #x00000003 a_ack!775)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!773) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!774) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) c_ack!774) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (CF_cos (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!775)
                                   (CF_acos c_ack!774))))))
  (FPCHECK_FDIV_OVERFLOW a!1 ((_ to_fp 11 53) roundNearestTiesToEven a_ack!775))))

(check-sat)
(exit)
