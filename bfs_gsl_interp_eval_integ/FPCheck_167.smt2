(declare-fun x1_ack!1876 () (_ BitVec 64))
(declare-fun x0_ack!1883 () (_ BitVec 64))
(declare-fun x2_ack!1877 () (_ BitVec 64))
(declare-fun b_ack!1882 () (_ BitVec 64))
(declare-fun a_ack!1881 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1878 () (_ BitVec 64))
(declare-fun y1_ack!1879 () (_ BitVec 64))
(declare-fun y2_ack!1880 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1883) ((_ to_fp 11 53) x1_ack!1876)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1876) ((_ to_fp 11 53) x2_ack!1877)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1876)
                       ((_ to_fp 11 53) x0_ack!1883))
               ((_ to_fp 11 53) x0_ack!1883))
       ((_ to_fp 11 53) x1_ack!1876)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1876)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1876)
                       ((_ to_fp 11 53) x0_ack!1883)))
       ((_ to_fp 11 53) x0_ack!1883)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1877)
                       ((_ to_fp 11 53) x1_ack!1876))
               ((_ to_fp 11 53) x1_ack!1876))
       ((_ to_fp 11 53) x2_ack!1877)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1877)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1877)
                       ((_ to_fp 11 53) x1_ack!1876)))
       ((_ to_fp 11 53) x1_ack!1876)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1876)
                    ((_ to_fp 11 53) x0_ack!1883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1877)
                    ((_ to_fp 11 53) x1_ack!1876))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1881) ((_ to_fp 11 53) b_ack!1882))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1881) ((_ to_fp 11 53) x0_ack!1883))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1882) ((_ to_fp 11 53) x2_ack!1877))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1881) ((_ to_fp 11 53) b_ack!1882))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1881) ((_ to_fp 11 53) x0_ack!1883))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1881) ((_ to_fp 11 53) x1_ack!1876))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1882) ((_ to_fp 11 53) x0_ack!1883)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1876)
                    ((_ to_fp 11 53) x0_ack!1883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1882)
                                  ((_ to_fp 11 53) x0_ack!1883)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1882)
                                   ((_ to_fp 11 53) x0_ack!1883))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1882)
                                   ((_ to_fp 11 53) x0_ack!1883)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1882)
                           ((_ to_fp 11 53) x0_ack!1883)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1882)
                 ((_ to_fp 11 53) x0_ack!1883)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1882)
                                  ((_ to_fp 11 53) x0_ack!1883)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1882)
                                   ((_ to_fp 11 53) x0_ack!1883))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1882)
                                   ((_ to_fp 11 53) x0_ack!1883)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1882)
                           ((_ to_fp 11 53) x0_ack!1883)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1882)
                 ((_ to_fp 11 53) x0_ack!1883)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1880)
                           ((_ to_fp 11 53) y1_ack!1879))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1877)
                                   ((_ to_fp 11 53) x1_ack!1876)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1879)
                           ((_ to_fp 11 53) y0_ack!1878))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1876)
                                   ((_ to_fp 11 53) x0_ack!1883)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1877)
                                   ((_ to_fp 11 53) x1_ack!1876))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1876)
                                   ((_ to_fp 11 53) x0_ack!1883))))))
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
                                   ((_ to_fp 11 53) x1_ack!1876)
                                   ((_ to_fp 11 53) x0_ack!1883))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1879)
                                   ((_ to_fp 11 53) y0_ack!1878))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1876)
                                   ((_ to_fp 11 53) x0_ack!1883)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1881)
                                   ((_ to_fp 11 53) x0_ack!1883))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1882)
                                   ((_ to_fp 11 53) x0_ack!1883))))))
  (FPCHECK_FADD_UNDERFLOW y0_ack!1878 a!7)))))))

(check-sat)
(exit)
