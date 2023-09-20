(declare-fun x1_ack!6202 () (_ BitVec 64))
(declare-fun x0_ack!6209 () (_ BitVec 64))
(declare-fun x2_ack!6203 () (_ BitVec 64))
(declare-fun b_ack!6208 () (_ BitVec 64))
(declare-fun a_ack!6207 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6204 () (_ BitVec 64))
(declare-fun y1_ack!6205 () (_ BitVec 64))
(declare-fun y2_ack!6206 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6209) ((_ to_fp 11 53) x1_ack!6202)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6202) ((_ to_fp 11 53) x2_ack!6203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6202)
                       ((_ to_fp 11 53) x0_ack!6209))
               ((_ to_fp 11 53) x0_ack!6209))
       ((_ to_fp 11 53) x1_ack!6202)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6202)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6202)
                       ((_ to_fp 11 53) x0_ack!6209)))
       ((_ to_fp 11 53) x0_ack!6209)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6203)
                       ((_ to_fp 11 53) x1_ack!6202))
               ((_ to_fp 11 53) x1_ack!6202))
       ((_ to_fp 11 53) x2_ack!6203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6203)
                       ((_ to_fp 11 53) x1_ack!6202)))
       ((_ to_fp 11 53) x1_ack!6202)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6202)
                    ((_ to_fp 11 53) x0_ack!6209))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6203)
                    ((_ to_fp 11 53) x1_ack!6202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6207) ((_ to_fp 11 53) b_ack!6208))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6207) ((_ to_fp 11 53) x0_ack!6209))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6208) ((_ to_fp 11 53) x2_ack!6203))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6207) ((_ to_fp 11 53) b_ack!6208))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6207) ((_ to_fp 11 53) x0_ack!6209))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6207) ((_ to_fp 11 53) x1_ack!6202)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6202) ((_ to_fp 11 53) a_ack!6207))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6208) ((_ to_fp 11 53) x1_ack!6202))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6208) ((_ to_fp 11 53) x2_ack!6203))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6203)
                    ((_ to_fp 11 53) x1_ack!6202))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6206)
                           ((_ to_fp 11 53) y1_ack!6205))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6203)
                                   ((_ to_fp 11 53) x1_ack!6202)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6205)
                           ((_ to_fp 11 53) y0_ack!6204))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6202)
                                   ((_ to_fp 11 53) x0_ack!6209)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6203)
                                   ((_ to_fp 11 53) x1_ack!6202))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6202)
                                   ((_ to_fp 11 53) x0_ack!6209))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
