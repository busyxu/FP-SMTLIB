(declare-fun b_ack!2127 () (_ BitVec 32))
(declare-fun a_ack!2129 () (_ BitVec 32))
(declare-fun c_ack!2128 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!2127 #x00000000)))
(assert (not (bvslt a_ack!2129 b_ack!2127)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2128) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2128) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 b_ack!2127)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2128) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2128) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!2128))
                           ((_ to_fp 11 53) c_ack!2128))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) c_ack!2128))
                           ((_ to_fp 11 53) c_ack!2128)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2127)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!2127)
  #x3fe0000000000000))

(check-sat)
(exit)
