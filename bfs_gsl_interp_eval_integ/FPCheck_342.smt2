(declare-fun x1_ack!4274 () (_ BitVec 64))
(declare-fun x0_ack!4281 () (_ BitVec 64))
(declare-fun x2_ack!4275 () (_ BitVec 64))
(declare-fun b_ack!4280 () (_ BitVec 64))
(declare-fun a_ack!4279 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!4276 () (_ BitVec 64))
(declare-fun y1_ack!4277 () (_ BitVec 64))
(declare-fun y2_ack!4278 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4281) ((_ to_fp 11 53) x1_ack!4274)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4274) ((_ to_fp 11 53) x2_ack!4275)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4274)
                       ((_ to_fp 11 53) x0_ack!4281))
               ((_ to_fp 11 53) x0_ack!4281))
       ((_ to_fp 11 53) x1_ack!4274)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4274)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4274)
                       ((_ to_fp 11 53) x0_ack!4281)))
       ((_ to_fp 11 53) x0_ack!4281)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4275)
                       ((_ to_fp 11 53) x1_ack!4274))
               ((_ to_fp 11 53) x1_ack!4274))
       ((_ to_fp 11 53) x2_ack!4275)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4275)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4275)
                       ((_ to_fp 11 53) x1_ack!4274)))
       ((_ to_fp 11 53) x1_ack!4274)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4274)
                    ((_ to_fp 11 53) x0_ack!4281))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4275)
                    ((_ to_fp 11 53) x1_ack!4274))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4279) ((_ to_fp 11 53) b_ack!4280))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4279) ((_ to_fp 11 53) x0_ack!4281))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4280) ((_ to_fp 11 53) x2_ack!4275))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4279) ((_ to_fp 11 53) b_ack!4280))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4279) ((_ to_fp 11 53) x0_ack!4281))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4279) ((_ to_fp 11 53) x1_ack!4274))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4280) ((_ to_fp 11 53) x0_ack!4281))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4280) ((_ to_fp 11 53) x1_ack!4274))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4274)
                    ((_ to_fp 11 53) x0_ack!4281))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4278)
                           ((_ to_fp 11 53) y1_ack!4277))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4275)
                                   ((_ to_fp 11 53) x1_ack!4274)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4277)
                           ((_ to_fp 11 53) y0_ack!4276))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4274)
                                   ((_ to_fp 11 53) x0_ack!4281)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4275)
                                   ((_ to_fp 11 53) x1_ack!4274))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4274)
                                   ((_ to_fp 11 53) x0_ack!4281))))))
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
                                   ((_ to_fp 11 53) x1_ack!4274)
                                   ((_ to_fp 11 53) x0_ack!4281))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4277)
                                   ((_ to_fp 11 53) y0_ack!4276))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4274)
                                   ((_ to_fp 11 53) x0_ack!4281)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
