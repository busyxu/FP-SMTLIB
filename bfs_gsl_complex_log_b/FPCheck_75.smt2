(declare-fun y1_ack!500 () (_ BitVec 64))
(declare-fun x1_ack!503 () (_ BitVec 64))
(declare-fun y2_ack!502 () (_ BitVec 64))
(declare-fun x2_ack!501 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!503))
             (fp.abs ((_ to_fp 11 53) y1_ack!500)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!503) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!501))
        (fp.abs ((_ to_fp 11 53) y2_ack!502))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!502))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!501))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!502))
          (fp.abs ((_ to_fp 11 53) x2_ack!501)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!502))
          (fp.abs ((_ to_fp 11 53) x2_ack!501)))))

(check-sat)
(exit)
