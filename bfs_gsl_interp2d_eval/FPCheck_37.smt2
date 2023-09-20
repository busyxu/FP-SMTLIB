(declare-fun x1_ack!373 () (_ BitVec 64))
(declare-fun x0_ack!378 () (_ BitVec 64))
(declare-fun y0_ack!374 () (_ BitVec 64))
(declare-fun x_ack!376 () (_ BitVec 64))
(declare-fun y_ack!377 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!375 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!378) ((_ to_fp 11 53) x1_ack!373))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!374) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!376) ((_ to_fp 11 53) x0_ack!378))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!376) ((_ to_fp 11 53) x1_ack!373))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!377) ((_ to_fp 11 53) y0_ack!374))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!377) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!376) ((_ to_fp 11 53) x0_ack!378))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!376) ((_ to_fp 11 53) x1_ack!373))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!377) ((_ to_fp 11 53) y0_ack!374))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!377) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!376)
                                   ((_ to_fp 11 53) x0_ack!378))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!373)
                                   ((_ to_fp 11 53) x0_ack!378)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!377)
                                   ((_ to_fp 11 53) y0_ack!374))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!374))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!375)))

(check-sat)
(exit)
