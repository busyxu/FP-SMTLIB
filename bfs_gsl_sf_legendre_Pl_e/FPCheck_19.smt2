(declare-fun a_ack!78 () (_ BitVec 32))
(declare-fun b_ack!77 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!78 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!77) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!77) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!78)))
(assert (not (= #x00000001 a_ack!78)))
(assert (= #x00000002 a_ack!78))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   ((_ to_fp 11 53) b_ack!77))
                           ((_ to_fp 11 53) b_ack!77)))))
  (FPCHECK_FADD_UNDERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
