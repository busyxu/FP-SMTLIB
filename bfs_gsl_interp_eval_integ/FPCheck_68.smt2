(declare-fun x1_ack!691 () (_ BitVec 64))
(declare-fun x0_ack!698 () (_ BitVec 64))
(declare-fun x2_ack!692 () (_ BitVec 64))
(declare-fun b_ack!697 () (_ BitVec 64))
(declare-fun a_ack!696 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!693 () (_ BitVec 64))
(declare-fun y1_ack!694 () (_ BitVec 64))
(declare-fun y2_ack!695 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!698) ((_ to_fp 11 53) x1_ack!691)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!691) ((_ to_fp 11 53) x2_ack!692)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!691)
                       ((_ to_fp 11 53) x0_ack!698))
               ((_ to_fp 11 53) x0_ack!698))
       ((_ to_fp 11 53) x1_ack!691)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!691)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!691)
                       ((_ to_fp 11 53) x0_ack!698)))
       ((_ to_fp 11 53) x0_ack!698)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!692)
                       ((_ to_fp 11 53) x1_ack!691))
               ((_ to_fp 11 53) x1_ack!691))
       ((_ to_fp 11 53) x2_ack!692)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!692)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!692)
                       ((_ to_fp 11 53) x1_ack!691)))
       ((_ to_fp 11 53) x1_ack!691)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!691)
                    ((_ to_fp 11 53) x0_ack!698))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!692)
                    ((_ to_fp 11 53) x1_ack!691))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!696) ((_ to_fp 11 53) b_ack!697))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!696) ((_ to_fp 11 53) x0_ack!698))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!697) ((_ to_fp 11 53) x2_ack!692))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!696) ((_ to_fp 11 53) b_ack!697))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!696) ((_ to_fp 11 53) x0_ack!698))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!696) ((_ to_fp 11 53) x1_ack!691))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!697) ((_ to_fp 11 53) x0_ack!698)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!691)
                    ((_ to_fp 11 53) x0_ack!698))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!695)
                           ((_ to_fp 11 53) y1_ack!694))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!692)
                                   ((_ to_fp 11 53) x1_ack!691)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!694)
                           ((_ to_fp 11 53) y0_ack!693))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!691)
                                   ((_ to_fp 11 53) x0_ack!698)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!692)
                                   ((_ to_fp 11 53) x1_ack!691))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!691)
                                   ((_ to_fp 11 53) x0_ack!698))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!691)
                    ((_ to_fp 11 53) x0_ack!698))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
