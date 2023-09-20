(declare-fun x1_ack!941 () (_ BitVec 64))
(declare-fun x0_ack!946 () (_ BitVec 64))
(declare-fun y0_ack!942 () (_ BitVec 64))
(declare-fun x_ack!944 () (_ BitVec 64))
(declare-fun y_ack!945 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!943 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!946) ((_ to_fp 11 53) x1_ack!941))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!942) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!944) ((_ to_fp 11 53) x0_ack!946))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!944) ((_ to_fp 11 53) x1_ack!941)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!945) ((_ to_fp 11 53) y0_ack!942))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!945) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!944)
                                   ((_ to_fp 11 53) x0_ack!946))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!941)
                                   ((_ to_fp 11 53) x0_ack!946)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!945)
                                   ((_ to_fp 11 53) y0_ack!942))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!942))))))
  (FPCHECK_FMUL_OVERFLOW a!1 z2_ack!943)))

(check-sat)
(exit)
