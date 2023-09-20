(declare-fun x1_ack!3203 () (_ BitVec 64))
(declare-fun x0_ack!3210 () (_ BitVec 64))
(declare-fun x2_ack!3204 () (_ BitVec 64))
(declare-fun b_ack!3209 () (_ BitVec 64))
(declare-fun a_ack!3208 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!3205 () (_ BitVec 64))
(declare-fun y1_ack!3206 () (_ BitVec 64))
(declare-fun y2_ack!3207 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3210) ((_ to_fp 11 53) x1_ack!3203)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3203) ((_ to_fp 11 53) x2_ack!3204)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3203)
                       ((_ to_fp 11 53) x0_ack!3210))
               ((_ to_fp 11 53) x0_ack!3210))
       ((_ to_fp 11 53) x1_ack!3203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3203)
                       ((_ to_fp 11 53) x0_ack!3210)))
       ((_ to_fp 11 53) x0_ack!3210)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3204)
                       ((_ to_fp 11 53) x1_ack!3203))
               ((_ to_fp 11 53) x1_ack!3203))
       ((_ to_fp 11 53) x2_ack!3204)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3204)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3204)
                       ((_ to_fp 11 53) x1_ack!3203)))
       ((_ to_fp 11 53) x1_ack!3203)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3203)
                    ((_ to_fp 11 53) x0_ack!3210))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3204)
                    ((_ to_fp 11 53) x1_ack!3203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3208) ((_ to_fp 11 53) b_ack!3209))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3208) ((_ to_fp 11 53) x0_ack!3210))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3209) ((_ to_fp 11 53) x2_ack!3204))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3208) ((_ to_fp 11 53) b_ack!3209))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3208) ((_ to_fp 11 53) x0_ack!3210))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3208) ((_ to_fp 11 53) x1_ack!3203))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3209) ((_ to_fp 11 53) x0_ack!3210))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3209) ((_ to_fp 11 53) x1_ack!3203))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3203)
                    ((_ to_fp 11 53) x0_ack!3210))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3207)
                           ((_ to_fp 11 53) y1_ack!3206))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3204)
                                   ((_ to_fp 11 53) x1_ack!3203)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3206)
                           ((_ to_fp 11 53) y0_ack!3205))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3203)
                                   ((_ to_fp 11 53) x0_ack!3210)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3204)
                                   ((_ to_fp 11 53) x1_ack!3203))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3203)
                                   ((_ to_fp 11 53) x0_ack!3210))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
