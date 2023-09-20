(declare-fun b_ack!82 () (_ BitVec 64))
(declare-fun a_ack!84 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!83 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!82) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!84 #x00000000)))
(assert (not (= #x00000000 a_ack!84)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!82) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!84))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!82))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 c_ack!83)))

(check-sat)
(exit)
