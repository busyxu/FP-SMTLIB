(declare-fun x1_ack!578 () (_ BitVec 64))
(declare-fun x0_ack!583 () (_ BitVec 64))
(declare-fun y0_ack!579 () (_ BitVec 64))
(declare-fun x_ack!581 () (_ BitVec 64))
(declare-fun y_ack!582 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!580 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!583) ((_ to_fp 11 53) x1_ack!578))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!579) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!581) ((_ to_fp 11 53) x0_ack!583))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!581) ((_ to_fp 11 53) x1_ack!578)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!582) ((_ to_fp 11 53) y0_ack!579))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!582) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!581)
                                   ((_ to_fp 11 53) x0_ack!583))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!578)
                                   ((_ to_fp 11 53) x0_ack!583)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!582)
                                   ((_ to_fp 11 53) y0_ack!579))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!579))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!580)))

(check-sat)
(exit)
