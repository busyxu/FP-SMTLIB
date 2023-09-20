(declare-fun x1_ack!403 () (_ BitVec 64))
(declare-fun x0_ack!408 () (_ BitVec 64))
(declare-fun y0_ack!404 () (_ BitVec 64))
(declare-fun x_ack!406 () (_ BitVec 64))
(declare-fun y_ack!407 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!405 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!408) ((_ to_fp 11 53) x1_ack!403))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!404) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!406) ((_ to_fp 11 53) x0_ack!408))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!406) ((_ to_fp 11 53) x1_ack!403))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!407) ((_ to_fp 11 53) y0_ack!404))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!406) ((_ to_fp 11 53) x0_ack!408))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!406) ((_ to_fp 11 53) x1_ack!403))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!407) ((_ to_fp 11 53) y0_ack!404))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!403)
                       ((_ to_fp 11 53) x0_ack!408))
               ((_ to_fp 11 53) x0_ack!408))
       ((_ to_fp 11 53) x1_ack!403)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!403)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!403)
                       ((_ to_fp 11 53) x0_ack!408)))
       ((_ to_fp 11 53) x0_ack!408)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!404))
               ((_ to_fp 11 53) y0_ack!404))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!404)))
       ((_ to_fp 11 53) y0_ack!404)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!407)
                                   ((_ to_fp 11 53) y0_ack!404))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!404))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!406)
                                   ((_ to_fp 11 53) x0_ack!408))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!403)
                                   ((_ to_fp 11 53) x0_ack!408)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW a!2 z3_ack!405))))

(check-sat)
(exit)
