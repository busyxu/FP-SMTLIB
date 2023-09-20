(declare-fun x1_ack!346 () (_ BitVec 64))
(declare-fun x0_ack!351 () (_ BitVec 64))
(declare-fun x2_ack!347 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!348 () (_ BitVec 64))
(declare-fun y1_ack!349 () (_ BitVec 64))
(declare-fun y2_ack!350 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!351) ((_ to_fp 11 53) x1_ack!346)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!346) ((_ to_fp 11 53) x2_ack!347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!346)
                       ((_ to_fp 11 53) x0_ack!351))
               ((_ to_fp 11 53) x0_ack!351))
       ((_ to_fp 11 53) x1_ack!346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!346)
                       ((_ to_fp 11 53) x0_ack!351)))
       ((_ to_fp 11 53) x0_ack!351)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!347)
                       ((_ to_fp 11 53) x1_ack!346))
               ((_ to_fp 11 53) x1_ack!346))
       ((_ to_fp 11 53) x2_ack!347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!347)
                       ((_ to_fp 11 53) x1_ack!346)))
       ((_ to_fp 11 53) x1_ack!346)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!346)
                    ((_ to_fp 11 53) x0_ack!351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!347)
                    ((_ to_fp 11 53) x1_ack!346))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!350)
                           ((_ to_fp 11 53) y1_ack!349))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!347)
                                   ((_ to_fp 11 53) x1_ack!346)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!349)
                           ((_ to_fp 11 53) y0_ack!348))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!346)
                                   ((_ to_fp 11 53) x0_ack!351)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!347)
                                   ((_ to_fp 11 53) x1_ack!346))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!346)
                                   ((_ to_fp 11 53) x0_ack!351))))))
  (FPCHECK_FDIV_INVALID
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven a!1 a!2))
    a!3)))

(check-sat)
(exit)
