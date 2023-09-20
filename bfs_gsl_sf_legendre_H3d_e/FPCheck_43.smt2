(declare-fun c_ack!250 () (_ BitVec 64))
(declare-fun a_ack!251 () (_ BitVec 32))
(declare-fun b_ack!249 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sinh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!250) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!251)))
(assert (not (= #x00000001 a_ack!251)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!250) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!249))
               ((_ to_fp 11 53) c_ack!250))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) c_ack!250)))
                   (CF_sinh (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    ((_ to_fp 11 53) c_ack!250))))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
