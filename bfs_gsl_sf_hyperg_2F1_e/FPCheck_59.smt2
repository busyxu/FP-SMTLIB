(declare-fun a_ack!324 () (_ BitVec 64))
(declare-fun b_ack!322 () (_ BitVec 64))
(declare-fun c_ack!323 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt ((_ to_fp 11 53) a_ack!324) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!322) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!323) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  c_ack!323
  (CF_floor (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!323)
                    ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)
