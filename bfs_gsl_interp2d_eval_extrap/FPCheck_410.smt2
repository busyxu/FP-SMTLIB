(declare-fun x1_ack!4456 () (_ BitVec 64))
(declare-fun x0_ack!4461 () (_ BitVec 64))
(declare-fun y0_ack!4457 () (_ BitVec 64))
(declare-fun x_ack!4459 () (_ BitVec 64))
(declare-fun y_ack!4460 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!4458 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!4461) ((_ to_fp 11 53) x1_ack!4456))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!4457) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4459) ((_ to_fp 11 53) x0_ack!4461))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4459) ((_ to_fp 11 53) x1_ack!4456))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!4460) ((_ to_fp 11 53) y0_ack!4457)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4456)
                       ((_ to_fp 11 53) x0_ack!4461))
               ((_ to_fp 11 53) x0_ack!4461))
       ((_ to_fp 11 53) x1_ack!4456)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4456)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4456)
                       ((_ to_fp 11 53) x0_ack!4461)))
       ((_ to_fp 11 53) x0_ack!4461)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4457))
               ((_ to_fp 11 53) y0_ack!4457))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!4457)))
       ((_ to_fp 11 53) y0_ack!4457)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4460)
                           ((_ to_fp 11 53) y0_ack!4457))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4457)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!4460)
                           ((_ to_fp 11 53) y0_ack!4457))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!4457)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!4459)
                                   ((_ to_fp 11 53) x0_ack!4461))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4456)
                                   ((_ to_fp 11 53) x0_ack!4461)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!4460)
                                   ((_ to_fp 11 53) y0_ack!4457))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!4457))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!4458)))

(check-sat)
(exit)
