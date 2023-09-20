(declare-fun c_ack!456 () (_ BitVec 64))
(declare-fun a_ack!458 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun d_ack!457 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!456) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!458) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!458)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!456))))))
  (not (fp.gt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!458)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!456))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (FPCHECK_FDIV_INVALID d_ack!457 (fp.abs ((_ to_fp 11 53) c_ack!456))))

(check-sat)
(exit)
