(declare-fun x1_ack!2871 () (_ BitVec 64))
(declare-fun x0_ack!2876 () (_ BitVec 64))
(declare-fun y0_ack!2872 () (_ BitVec 64))
(declare-fun x_ack!2874 () (_ BitVec 64))
(declare-fun y_ack!2875 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!2873 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2876) ((_ to_fp 11 53) x1_ack!2871))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2872) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2874) ((_ to_fp 11 53) x0_ack!2876))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2874) ((_ to_fp 11 53) x1_ack!2871))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2875) ((_ to_fp 11 53) y0_ack!2872))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2875) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2871)
                       ((_ to_fp 11 53) x0_ack!2876))
               ((_ to_fp 11 53) x0_ack!2876))
       ((_ to_fp 11 53) x1_ack!2871)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2871)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2871)
                       ((_ to_fp 11 53) x0_ack!2876)))
       ((_ to_fp 11 53) x0_ack!2876)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2872))
               ((_ to_fp 11 53) y0_ack!2872))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2872)))
       ((_ to_fp 11 53) y0_ack!2872)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2875)
                                   ((_ to_fp 11 53) y0_ack!2872))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2872))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2874)
                                   ((_ to_fp 11 53) x0_ack!2876))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2871)
                                   ((_ to_fp 11 53) x0_ack!2876)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!2873))))

(check-sat)
(exit)
