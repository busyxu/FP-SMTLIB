(declare-fun x1_ack!1895 () (_ BitVec 64))
(declare-fun x0_ack!1902 () (_ BitVec 64))
(declare-fun x2_ack!1896 () (_ BitVec 64))
(declare-fun b_ack!1901 () (_ BitVec 64))
(declare-fun a_ack!1900 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1897 () (_ BitVec 64))
(declare-fun y1_ack!1898 () (_ BitVec 64))
(declare-fun y2_ack!1899 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1902) ((_ to_fp 11 53) x1_ack!1895)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1895) ((_ to_fp 11 53) x2_ack!1896)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1895)
                       ((_ to_fp 11 53) x0_ack!1902))
               ((_ to_fp 11 53) x0_ack!1902))
       ((_ to_fp 11 53) x1_ack!1895)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1895)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1895)
                       ((_ to_fp 11 53) x0_ack!1902)))
       ((_ to_fp 11 53) x0_ack!1902)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1896)
                       ((_ to_fp 11 53) x1_ack!1895))
               ((_ to_fp 11 53) x1_ack!1895))
       ((_ to_fp 11 53) x2_ack!1896)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1896)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1896)
                       ((_ to_fp 11 53) x1_ack!1895)))
       ((_ to_fp 11 53) x1_ack!1895)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1895)
                    ((_ to_fp 11 53) x0_ack!1902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1896)
                    ((_ to_fp 11 53) x1_ack!1895))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1900) ((_ to_fp 11 53) b_ack!1901))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1900) ((_ to_fp 11 53) x0_ack!1902))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1901) ((_ to_fp 11 53) x2_ack!1896))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1900) ((_ to_fp 11 53) b_ack!1901))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1900) ((_ to_fp 11 53) x0_ack!1902))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1900) ((_ to_fp 11 53) x1_ack!1895))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1901) ((_ to_fp 11 53) x0_ack!1902))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1901) ((_ to_fp 11 53) x1_ack!1895)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1895) ((_ to_fp 11 53) b_ack!1901))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1895)
                    ((_ to_fp 11 53) x0_ack!1902))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1896)
                    ((_ to_fp 11 53) x1_ack!1895))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1899)
                           ((_ to_fp 11 53) y1_ack!1898))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1896)
                                   ((_ to_fp 11 53) x1_ack!1895)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1898)
                           ((_ to_fp 11 53) y0_ack!1897))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1895)
                                   ((_ to_fp 11 53) x0_ack!1902)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1896)
                                   ((_ to_fp 11 53) x1_ack!1895))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1895)
                                   ((_ to_fp 11 53) x0_ack!1902))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
