(declare-fun x1_ack!5800 () (_ BitVec 64))
(declare-fun x0_ack!5807 () (_ BitVec 64))
(declare-fun x2_ack!5801 () (_ BitVec 64))
(declare-fun b_ack!5806 () (_ BitVec 64))
(declare-fun a_ack!5805 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5802 () (_ BitVec 64))
(declare-fun y1_ack!5803 () (_ BitVec 64))
(declare-fun y2_ack!5804 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5807) ((_ to_fp 11 53) x1_ack!5800)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5800) ((_ to_fp 11 53) x2_ack!5801)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5800)
                       ((_ to_fp 11 53) x0_ack!5807))
               ((_ to_fp 11 53) x0_ack!5807))
       ((_ to_fp 11 53) x1_ack!5800)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5800)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5800)
                       ((_ to_fp 11 53) x0_ack!5807)))
       ((_ to_fp 11 53) x0_ack!5807)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5801)
                       ((_ to_fp 11 53) x1_ack!5800))
               ((_ to_fp 11 53) x1_ack!5800))
       ((_ to_fp 11 53) x2_ack!5801)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5801)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5801)
                       ((_ to_fp 11 53) x1_ack!5800)))
       ((_ to_fp 11 53) x1_ack!5800)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5800)
                    ((_ to_fp 11 53) x0_ack!5807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5801)
                    ((_ to_fp 11 53) x1_ack!5800))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5805) ((_ to_fp 11 53) b_ack!5806))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5805) ((_ to_fp 11 53) x0_ack!5807))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5806) ((_ to_fp 11 53) x2_ack!5801))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5805) ((_ to_fp 11 53) b_ack!5806))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5805) ((_ to_fp 11 53) x0_ack!5807))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5805) ((_ to_fp 11 53) x1_ack!5800))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5806) ((_ to_fp 11 53) x0_ack!5807))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5806) ((_ to_fp 11 53) x1_ack!5800)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5800) ((_ to_fp 11 53) b_ack!5806))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5800)
                    ((_ to_fp 11 53) x0_ack!5807))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5804)
                           ((_ to_fp 11 53) y1_ack!5803))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5801)
                                   ((_ to_fp 11 53) x1_ack!5800)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5803)
                           ((_ to_fp 11 53) y0_ack!5802))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5800)
                                   ((_ to_fp 11 53) x0_ack!5807)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5801)
                                   ((_ to_fp 11 53) x1_ack!5800))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5800)
                                   ((_ to_fp 11 53) x0_ack!5807))))))
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
                                   ((_ to_fp 11 53) x1_ack!5800)
                                   ((_ to_fp 11 53) x0_ack!5807))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!5803)
                                   ((_ to_fp 11 53) y0_ack!5802))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5800)
                                   ((_ to_fp 11 53) x0_ack!5807)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
