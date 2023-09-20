(declare-fun b_ack!365 () (_ BitVec 64))
(declare-fun a_ack!366 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!365) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!366) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!366)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!365))))))
  (fp.gt (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x40026bb1bbb55516))
         ((_ to_fp 11 53) #x41dfffffff800000))))

(check-sat)
(exit)
