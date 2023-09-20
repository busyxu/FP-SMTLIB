(declare-fun x1_ack!322 () (_ BitVec 64))
(declare-fun x0_ack!327 () (_ BitVec 64))
(declare-fun x2_ack!323 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!324 () (_ BitVec 64))
(declare-fun y1_ack!325 () (_ BitVec 64))
(declare-fun y2_ack!326 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!327) ((_ to_fp 11 53) x1_ack!322)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!322) ((_ to_fp 11 53) x2_ack!323)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!322)
                       ((_ to_fp 11 53) x0_ack!327))
               ((_ to_fp 11 53) x0_ack!327))
       ((_ to_fp 11 53) x1_ack!322)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!322)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!322)
                       ((_ to_fp 11 53) x0_ack!327)))
       ((_ to_fp 11 53) x0_ack!327)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!323)
                       ((_ to_fp 11 53) x1_ack!322))
               ((_ to_fp 11 53) x1_ack!322))
       ((_ to_fp 11 53) x2_ack!323)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!323)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!323)
                       ((_ to_fp 11 53) x1_ack!322)))
       ((_ to_fp 11 53) x1_ack!322)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!322)
                    ((_ to_fp 11 53) x0_ack!327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!323)
                    ((_ to_fp 11 53) x1_ack!322))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!326)
                           ((_ to_fp 11 53) y1_ack!325))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!323)
                                   ((_ to_fp 11 53) x1_ack!322)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!325)
                           ((_ to_fp 11 53) y0_ack!324))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!322)
                                   ((_ to_fp 11 53) x0_ack!327)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!323)
                                   ((_ to_fp 11 53) x1_ack!322))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!322)
                                   ((_ to_fp 11 53) x0_ack!327))))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven a!1 a!2))
    a!3)))

(check-sat)
(exit)
