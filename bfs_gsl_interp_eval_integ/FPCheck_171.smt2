(declare-fun x1_ack!1932 () (_ BitVec 64))
(declare-fun x0_ack!1939 () (_ BitVec 64))
(declare-fun x2_ack!1933 () (_ BitVec 64))
(declare-fun b_ack!1938 () (_ BitVec 64))
(declare-fun a_ack!1937 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1934 () (_ BitVec 64))
(declare-fun y1_ack!1935 () (_ BitVec 64))
(declare-fun y2_ack!1936 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1939) ((_ to_fp 11 53) x1_ack!1932)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1932) ((_ to_fp 11 53) x2_ack!1933)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1932)
                       ((_ to_fp 11 53) x0_ack!1939))
               ((_ to_fp 11 53) x0_ack!1939))
       ((_ to_fp 11 53) x1_ack!1932)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1932)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1932)
                       ((_ to_fp 11 53) x0_ack!1939)))
       ((_ to_fp 11 53) x0_ack!1939)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1933)
                       ((_ to_fp 11 53) x1_ack!1932))
               ((_ to_fp 11 53) x1_ack!1932))
       ((_ to_fp 11 53) x2_ack!1933)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1933)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1933)
                       ((_ to_fp 11 53) x1_ack!1932)))
       ((_ to_fp 11 53) x1_ack!1932)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1932)
                    ((_ to_fp 11 53) x0_ack!1939))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1933)
                    ((_ to_fp 11 53) x1_ack!1932))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1937) ((_ to_fp 11 53) b_ack!1938))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1937) ((_ to_fp 11 53) x0_ack!1939))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1938) ((_ to_fp 11 53) x2_ack!1933))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1937) ((_ to_fp 11 53) b_ack!1938))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1937) ((_ to_fp 11 53) x0_ack!1939))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1937) ((_ to_fp 11 53) x1_ack!1932))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1938) ((_ to_fp 11 53) x0_ack!1939)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1932)
                    ((_ to_fp 11 53) x0_ack!1939))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1938)
                                  ((_ to_fp 11 53) x0_ack!1939)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1938)
                           ((_ to_fp 11 53) x0_ack!1939)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1938)
                 ((_ to_fp 11 53) x0_ack!1939)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1938)
                                  ((_ to_fp 11 53) x0_ack!1939)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1938)
                           ((_ to_fp 11 53) x0_ack!1939)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1938)
                 ((_ to_fp 11 53) x0_ack!1939)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1936)
                           ((_ to_fp 11 53) y1_ack!1935))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1933)
                                   ((_ to_fp 11 53) x1_ack!1932)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1935)
                           ((_ to_fp 11 53) y0_ack!1934))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1932)
                                   ((_ to_fp 11 53) x0_ack!1939)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1933)
                                   ((_ to_fp 11 53) x1_ack!1932))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1932)
                                   ((_ to_fp 11 53) x0_ack!1939)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1937)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1937)
                                   ((_ to_fp 11 53) x0_ack!1939)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939))))))
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
                                   ((_ to_fp 11 53) a_ack!1937)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1932)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1935)
                                   ((_ to_fp 11 53) y0_ack!1934))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1932)
                                   ((_ to_fp 11 53) x0_ack!1939)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1937)
                                   ((_ to_fp 11 53) x0_ack!1939))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1938)
                                   ((_ to_fp 11 53) x0_ack!1939))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!1934) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
