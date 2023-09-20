(declare-fun c_ack!473 () (_ BitVec 64))
(declare-fun a_ack!475 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!472 () (_ BitVec 64))
(declare-fun d_ack!474 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!473) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!475) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!475)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!473))))))
  (not (fp.gt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!475)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!473))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) d_ack!474)
          (fp.abs ((_ to_fp 11 53) c_ack!473)))
  b_ack!472))

(check-sat)
(exit)
