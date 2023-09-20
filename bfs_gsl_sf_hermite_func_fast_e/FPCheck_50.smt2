(declare-fun a_ack!219 () (_ BitVec 32))
(declare-fun b_ack!218 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!219 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!218) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!219 #x00000024)))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvmul #x00000002 a_ack!219))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fd0000000000000
  (CF_log ((_ to_fp 11 53) roundNearestTiesToEven (bvmul #x00000002 a_ack!219)))))

(check-sat)
(exit)
