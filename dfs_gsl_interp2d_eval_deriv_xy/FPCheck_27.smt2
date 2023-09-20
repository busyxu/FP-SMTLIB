(declare-fun x1_ack!310 () (_ BitVec 64))
(declare-fun x0_ack!318 () (_ BitVec 64))
(declare-fun y0_ack!311 () (_ BitVec 64))
(declare-fun x_ack!316 () (_ BitVec 64))
(declare-fun y_ack!317 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!314 () (_ BitVec 64))
(declare-fun z1_ack!313 () (_ BitVec 64))
(declare-fun z3_ack!315 () (_ BitVec 64))
(declare-fun z0_ack!312 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!318) ((_ to_fp 11 53) x1_ack!310))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!311) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x0_ack!318))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x1_ack!310))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) y0_ack!311))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x0_ack!318))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!316) ((_ to_fp 11 53) x1_ack!310))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) y0_ack!311))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!317) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!310)
                       ((_ to_fp 11 53) x0_ack!318))
               ((_ to_fp 11 53) x0_ack!318))
       ((_ to_fp 11 53) x1_ack!310)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!310)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!310)
                       ((_ to_fp 11 53) x0_ack!318)))
       ((_ to_fp 11 53) x0_ack!318)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!311))
               ((_ to_fp 11 53) y0_ack!311))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!311)))
       ((_ to_fp 11 53) y0_ack!311)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!310)
                                   ((_ to_fp 11 53) x0_ack!318)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!311)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!312)
                                   ((_ to_fp 11 53) z3_ack!315))
                           ((_ to_fp 11 53) z1_ack!313))
                   ((_ to_fp 11 53) z2_ack!314))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
