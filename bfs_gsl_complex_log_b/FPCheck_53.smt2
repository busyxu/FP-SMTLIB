(declare-fun y1_ack!324 () (_ BitVec 64))
(declare-fun x1_ack!327 () (_ BitVec 64))
(declare-fun y2_ack!326 () (_ BitVec 64))
(declare-fun x2_ack!325 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!327))
             (fp.abs ((_ to_fp 11 53) y1_ack!324)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!325))
             (fp.abs ((_ to_fp 11 53) y2_ack!326)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!325) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (CF_atan2 y1_ack!324 x1_ack!327)
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x7ff0000000000001)
          (CF_atan2 y2_ack!326 x2_ack!325))))

(check-sat)
(exit)
