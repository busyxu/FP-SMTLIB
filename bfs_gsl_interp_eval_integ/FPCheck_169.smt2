(declare-fun x1_ack!1900 () (_ BitVec 64))
(declare-fun x0_ack!1907 () (_ BitVec 64))
(declare-fun x2_ack!1901 () (_ BitVec 64))
(declare-fun b_ack!1906 () (_ BitVec 64))
(declare-fun a_ack!1905 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1902 () (_ BitVec 64))
(declare-fun y1_ack!1903 () (_ BitVec 64))
(declare-fun y2_ack!1904 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1907) ((_ to_fp 11 53) x1_ack!1900)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1900) ((_ to_fp 11 53) x2_ack!1901)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1900)
                       ((_ to_fp 11 53) x0_ack!1907))
               ((_ to_fp 11 53) x0_ack!1907))
       ((_ to_fp 11 53) x1_ack!1900)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1900)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1900)
                       ((_ to_fp 11 53) x0_ack!1907)))
       ((_ to_fp 11 53) x0_ack!1907)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1901)
                       ((_ to_fp 11 53) x1_ack!1900))
               ((_ to_fp 11 53) x1_ack!1900))
       ((_ to_fp 11 53) x2_ack!1901)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1901)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1901)
                       ((_ to_fp 11 53) x1_ack!1900)))
       ((_ to_fp 11 53) x1_ack!1900)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1900)
                    ((_ to_fp 11 53) x0_ack!1907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1901)
                    ((_ to_fp 11 53) x1_ack!1900))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1905) ((_ to_fp 11 53) b_ack!1906))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1905) ((_ to_fp 11 53) x0_ack!1907))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1906) ((_ to_fp 11 53) x2_ack!1901))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1905) ((_ to_fp 11 53) b_ack!1906))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1905) ((_ to_fp 11 53) x0_ack!1907))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1905) ((_ to_fp 11 53) x1_ack!1900))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1906) ((_ to_fp 11 53) x0_ack!1907)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1900)
                    ((_ to_fp 11 53) x0_ack!1907))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1906)
                                  ((_ to_fp 11 53) x0_ack!1907)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1906)
                           ((_ to_fp 11 53) x0_ack!1907)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1906)
                 ((_ to_fp 11 53) x0_ack!1907)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1906)
                                  ((_ to_fp 11 53) x0_ack!1907)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1906)
                           ((_ to_fp 11 53) x0_ack!1907)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1906)
                 ((_ to_fp 11 53) x0_ack!1907)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1904)
                           ((_ to_fp 11 53) y1_ack!1903))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1901)
                                   ((_ to_fp 11 53) x1_ack!1900)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1903)
                           ((_ to_fp 11 53) y0_ack!1902))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1900)
                                   ((_ to_fp 11 53) x0_ack!1907)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1901)
                                   ((_ to_fp 11 53) x1_ack!1900))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1900)
                                   ((_ to_fp 11 53) x0_ack!1907)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1905)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1905)
                                   ((_ to_fp 11 53) x0_ack!1907)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1905)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1900)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1903)
                                   ((_ to_fp 11 53) y0_ack!1902))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1900)
                                   ((_ to_fp 11 53) x0_ack!1907)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1905)
                                   ((_ to_fp 11 53) x0_ack!1907))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1906)
                                   ((_ to_fp 11 53) x0_ack!1907))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!1902) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
