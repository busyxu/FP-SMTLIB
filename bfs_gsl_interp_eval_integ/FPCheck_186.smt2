(declare-fun x1_ack!2153 () (_ BitVec 64))
(declare-fun x0_ack!2160 () (_ BitVec 64))
(declare-fun x2_ack!2154 () (_ BitVec 64))
(declare-fun b_ack!2159 () (_ BitVec 64))
(declare-fun a_ack!2158 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2155 () (_ BitVec 64))
(declare-fun y1_ack!2156 () (_ BitVec 64))
(declare-fun y2_ack!2157 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2160) ((_ to_fp 11 53) x1_ack!2153)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2153) ((_ to_fp 11 53) x2_ack!2154)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2153)
                       ((_ to_fp 11 53) x0_ack!2160))
               ((_ to_fp 11 53) x0_ack!2160))
       ((_ to_fp 11 53) x1_ack!2153)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2153)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2153)
                       ((_ to_fp 11 53) x0_ack!2160)))
       ((_ to_fp 11 53) x0_ack!2160)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2154)
                       ((_ to_fp 11 53) x1_ack!2153))
               ((_ to_fp 11 53) x1_ack!2153))
       ((_ to_fp 11 53) x2_ack!2154)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2154)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2154)
                       ((_ to_fp 11 53) x1_ack!2153)))
       ((_ to_fp 11 53) x1_ack!2153)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2153)
                    ((_ to_fp 11 53) x0_ack!2160))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2154)
                    ((_ to_fp 11 53) x1_ack!2153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2158) ((_ to_fp 11 53) b_ack!2159))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2158) ((_ to_fp 11 53) x0_ack!2160))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2159) ((_ to_fp 11 53) x2_ack!2154))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2158) ((_ to_fp 11 53) b_ack!2159))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2158) ((_ to_fp 11 53) x0_ack!2160))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2158) ((_ to_fp 11 53) x1_ack!2153)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2153) ((_ to_fp 11 53) a_ack!2158))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2159) ((_ to_fp 11 53) x1_ack!2153))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2159) ((_ to_fp 11 53) x2_ack!2154))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2154)
                    ((_ to_fp 11 53) x1_ack!2153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2157)
                           ((_ to_fp 11 53) y1_ack!2156))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2154)
                                   ((_ to_fp 11 53) x1_ack!2153)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2156)
                           ((_ to_fp 11 53) y0_ack!2155))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2153)
                                   ((_ to_fp 11 53) x0_ack!2160)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2154)
                                   ((_ to_fp 11 53) x1_ack!2153))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2153)
                                   ((_ to_fp 11 53) x0_ack!2160))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!4))))

(check-sat)
(exit)
