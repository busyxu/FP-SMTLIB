(declare-fun y1_ack!296 () (_ BitVec 64))
(declare-fun x1_ack!299 () (_ BitVec 64))
(declare-fun y2_ack!298 () (_ BitVec 64))
(declare-fun x2_ack!297 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!299))
             (fp.abs ((_ to_fp 11 53) y1_ack!296)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!299) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!297))
             (fp.abs ((_ to_fp 11 53) y2_ack!298)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!297) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!296)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!298)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x7ff0000000000001) a!2))))

(check-sat)
(exit)
