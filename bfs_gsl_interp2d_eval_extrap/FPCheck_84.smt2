(declare-fun x1_ack!844 () (_ BitVec 64))
(declare-fun x0_ack!849 () (_ BitVec 64))
(declare-fun y0_ack!845 () (_ BitVec 64))
(declare-fun x_ack!847 () (_ BitVec 64))
(declare-fun y_ack!848 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z1_ack!846 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!849) ((_ to_fp 11 53) x1_ack!844))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!845) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!847) ((_ to_fp 11 53) x0_ack!849))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!847) ((_ to_fp 11 53) x1_ack!844)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!848) ((_ to_fp 11 53) y0_ack!845))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!848) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!847)
                                   ((_ to_fp 11 53) x0_ack!849))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!844)
                                   ((_ to_fp 11 53) x0_ack!849))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!848)
                                   ((_ to_fp 11 53) y0_ack!845))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!845))))))
  (FPCHECK_FMUL_ACCURACY a!2 z1_ack!846))))

(check-sat)
(exit)
