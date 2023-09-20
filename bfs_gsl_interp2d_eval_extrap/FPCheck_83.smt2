(declare-fun x1_ack!832 () (_ BitVec 64))
(declare-fun x0_ack!837 () (_ BitVec 64))
(declare-fun y0_ack!833 () (_ BitVec 64))
(declare-fun x_ack!835 () (_ BitVec 64))
(declare-fun y_ack!836 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z1_ack!834 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!837) ((_ to_fp 11 53) x1_ack!832))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!833) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!835) ((_ to_fp 11 53) x0_ack!837))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!835) ((_ to_fp 11 53) x1_ack!832)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!836) ((_ to_fp 11 53) y0_ack!833))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!836) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!835)
                                   ((_ to_fp 11 53) x0_ack!837))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!832)
                                   ((_ to_fp 11 53) x0_ack!837))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!836)
                                   ((_ to_fp 11 53) y0_ack!833))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!833))))))
  (FPCHECK_FMUL_UNDERFLOW a!2 z1_ack!834))))

(check-sat)
(exit)
