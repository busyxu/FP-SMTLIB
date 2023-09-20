(declare-fun x1_ack!6178 () (_ BitVec 64))
(declare-fun x0_ack!6185 () (_ BitVec 64))
(declare-fun x2_ack!6179 () (_ BitVec 64))
(declare-fun b_ack!6184 () (_ BitVec 64))
(declare-fun a_ack!6183 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6180 () (_ BitVec 64))
(declare-fun y1_ack!6181 () (_ BitVec 64))
(declare-fun y2_ack!6182 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6185) ((_ to_fp 11 53) x1_ack!6178)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6178) ((_ to_fp 11 53) x2_ack!6179)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6178)
                       ((_ to_fp 11 53) x0_ack!6185))
               ((_ to_fp 11 53) x0_ack!6185))
       ((_ to_fp 11 53) x1_ack!6178)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6178)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6178)
                       ((_ to_fp 11 53) x0_ack!6185)))
       ((_ to_fp 11 53) x0_ack!6185)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6179)
                       ((_ to_fp 11 53) x1_ack!6178))
               ((_ to_fp 11 53) x1_ack!6178))
       ((_ to_fp 11 53) x2_ack!6179)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6179)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6179)
                       ((_ to_fp 11 53) x1_ack!6178)))
       ((_ to_fp 11 53) x1_ack!6178)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6178)
                    ((_ to_fp 11 53) x0_ack!6185))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6179)
                    ((_ to_fp 11 53) x1_ack!6178))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6183) ((_ to_fp 11 53) b_ack!6184))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6183) ((_ to_fp 11 53) x0_ack!6185))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6184) ((_ to_fp 11 53) x2_ack!6179))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6183) ((_ to_fp 11 53) b_ack!6184))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6183) ((_ to_fp 11 53) x0_ack!6185))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6183) ((_ to_fp 11 53) x1_ack!6178)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6178) ((_ to_fp 11 53) a_ack!6183))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6184) ((_ to_fp 11 53) x1_ack!6178))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6184) ((_ to_fp 11 53) x2_ack!6179))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6179)
                    ((_ to_fp 11 53) x1_ack!6178))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6182)
                           ((_ to_fp 11 53) y1_ack!6181))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6179)
                                   ((_ to_fp 11 53) x1_ack!6178)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6181)
                           ((_ to_fp 11 53) y0_ack!6180))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6178)
                                   ((_ to_fp 11 53) x0_ack!6185)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6179)
                                   ((_ to_fp 11 53) x1_ack!6178))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6178)
                                   ((_ to_fp 11 53) x0_ack!6185))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6179)
                                   ((_ to_fp 11 53) x1_ack!6178))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!6182)
                    ((_ to_fp 11 53) y1_ack!6181))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6179)
                    ((_ to_fp 11 53) x1_ack!6178)))
    a!5)))))

(check-sat)
(exit)
