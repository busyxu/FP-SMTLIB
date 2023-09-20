(declare-fun x1_ack!6237 () (_ BitVec 64))
(declare-fun x0_ack!6244 () (_ BitVec 64))
(declare-fun x2_ack!6238 () (_ BitVec 64))
(declare-fun b_ack!6243 () (_ BitVec 64))
(declare-fun a_ack!6242 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6239 () (_ BitVec 64))
(declare-fun y1_ack!6240 () (_ BitVec 64))
(declare-fun y2_ack!6241 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6244) ((_ to_fp 11 53) x1_ack!6237)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6237) ((_ to_fp 11 53) x2_ack!6238)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6237)
                       ((_ to_fp 11 53) x0_ack!6244))
               ((_ to_fp 11 53) x0_ack!6244))
       ((_ to_fp 11 53) x1_ack!6237)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6237)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6237)
                       ((_ to_fp 11 53) x0_ack!6244)))
       ((_ to_fp 11 53) x0_ack!6244)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6238)
                       ((_ to_fp 11 53) x1_ack!6237))
               ((_ to_fp 11 53) x1_ack!6237))
       ((_ to_fp 11 53) x2_ack!6238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6238)
                       ((_ to_fp 11 53) x1_ack!6237)))
       ((_ to_fp 11 53) x1_ack!6237)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6237)
                    ((_ to_fp 11 53) x0_ack!6244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6238)
                    ((_ to_fp 11 53) x1_ack!6237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6242) ((_ to_fp 11 53) b_ack!6243))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6242) ((_ to_fp 11 53) x0_ack!6244))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6243) ((_ to_fp 11 53) x2_ack!6238))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6242) ((_ to_fp 11 53) b_ack!6243))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6242) ((_ to_fp 11 53) x0_ack!6244))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6242) ((_ to_fp 11 53) x1_ack!6237))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6243) ((_ to_fp 11 53) x0_ack!6244))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6243) ((_ to_fp 11 53) x1_ack!6237)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6237) ((_ to_fp 11 53) b_ack!6243))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6237)
                    ((_ to_fp 11 53) x0_ack!6244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6241)
                           ((_ to_fp 11 53) y1_ack!6240))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6238)
                                   ((_ to_fp 11 53) x1_ack!6237)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6240)
                           ((_ to_fp 11 53) y0_ack!6239))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6237)
                                   ((_ to_fp 11 53) x0_ack!6244)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6238)
                                   ((_ to_fp 11 53) x1_ack!6237))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6237)
                                   ((_ to_fp 11 53) x0_ack!6244)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6242)
                                   ((_ to_fp 11 53) x0_ack!6244))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6242)
                                   ((_ to_fp 11 53) x0_ack!6244)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6237)
                                   ((_ to_fp 11 53) x0_ack!6244))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6237)
                                   ((_ to_fp 11 53) x0_ack!6244))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6237)
                                   ((_ to_fp 11 53) x0_ack!6244))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6242)
                                   ((_ to_fp 11 53) x0_ack!6244))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6237)
                                   ((_ to_fp 11 53) x0_ack!6244))))))
  (FPCHECK_FMUL_ACCURACY a!6 a!7))))))

(check-sat)
(exit)
