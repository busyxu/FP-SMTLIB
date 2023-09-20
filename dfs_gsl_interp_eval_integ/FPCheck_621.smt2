(declare-fun x1_ack!7873 () (_ BitVec 64))
(declare-fun x0_ack!7880 () (_ BitVec 64))
(declare-fun x2_ack!7874 () (_ BitVec 64))
(declare-fun b_ack!7879 () (_ BitVec 64))
(declare-fun a_ack!7878 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7875 () (_ BitVec 64))
(declare-fun y1_ack!7876 () (_ BitVec 64))
(declare-fun y2_ack!7877 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7880) ((_ to_fp 11 53) x1_ack!7873)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7873) ((_ to_fp 11 53) x2_ack!7874)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7873)
                       ((_ to_fp 11 53) x0_ack!7880))
               ((_ to_fp 11 53) x0_ack!7880))
       ((_ to_fp 11 53) x1_ack!7873)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7873)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7873)
                       ((_ to_fp 11 53) x0_ack!7880)))
       ((_ to_fp 11 53) x0_ack!7880)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7874)
                       ((_ to_fp 11 53) x1_ack!7873))
               ((_ to_fp 11 53) x1_ack!7873))
       ((_ to_fp 11 53) x2_ack!7874)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7874)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7874)
                       ((_ to_fp 11 53) x1_ack!7873)))
       ((_ to_fp 11 53) x1_ack!7873)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7873)
                    ((_ to_fp 11 53) x0_ack!7880))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7874)
                    ((_ to_fp 11 53) x1_ack!7873))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7878) ((_ to_fp 11 53) b_ack!7879))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7878) ((_ to_fp 11 53) x0_ack!7880))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7879) ((_ to_fp 11 53) x2_ack!7874))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7878) ((_ to_fp 11 53) b_ack!7879))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7878) ((_ to_fp 11 53) x0_ack!7880))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7878) ((_ to_fp 11 53) x1_ack!7873))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7879) ((_ to_fp 11 53) x0_ack!7880)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7873)
                    ((_ to_fp 11 53) x0_ack!7880))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7877)
                           ((_ to_fp 11 53) y1_ack!7876))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7874)
                                   ((_ to_fp 11 53) x1_ack!7873)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7876)
                           ((_ to_fp 11 53) y0_ack!7875))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7873)
                                   ((_ to_fp 11 53) x0_ack!7880)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7874)
                                   ((_ to_fp 11 53) x1_ack!7873))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7873)
                                   ((_ to_fp 11 53) x0_ack!7880))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7873)
                                   ((_ to_fp 11 53) x0_ack!7880))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!7876)
                                   ((_ to_fp 11 53) y0_ack!7875))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7873)
                                   ((_ to_fp 11 53) x0_ack!7880)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!7878)
                    ((_ to_fp 11 53) x0_ack!7880))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7879)
                    ((_ to_fp 11 53) x0_ack!7880)))))))))

(check-sat)
(exit)
