(declare-fun x1_ack!4508 () (_ BitVec 64))
(declare-fun x0_ack!4512 () (_ BitVec 64))
(declare-fun x2_ack!4509 () (_ BitVec 64))
(declare-fun b_ack!4511 () (_ BitVec 64))
(declare-fun a_ack!4510 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4512) ((_ to_fp 11 53) x1_ack!4508)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4508) ((_ to_fp 11 53) x2_ack!4509)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4508)
                       ((_ to_fp 11 53) x0_ack!4512))
               ((_ to_fp 11 53) x0_ack!4512))
       ((_ to_fp 11 53) x1_ack!4508)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4508)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4508)
                       ((_ to_fp 11 53) x0_ack!4512)))
       ((_ to_fp 11 53) x0_ack!4512)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4509)
                       ((_ to_fp 11 53) x1_ack!4508))
               ((_ to_fp 11 53) x1_ack!4508))
       ((_ to_fp 11 53) x2_ack!4509)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4509)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4509)
                       ((_ to_fp 11 53) x1_ack!4508)))
       ((_ to_fp 11 53) x1_ack!4508)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4508)
                    ((_ to_fp 11 53) x0_ack!4512))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4509)
                    ((_ to_fp 11 53) x1_ack!4508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4510) ((_ to_fp 11 53) b_ack!4511))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4510) ((_ to_fp 11 53) x0_ack!4512))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4511) ((_ to_fp 11 53) x2_ack!4509))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4510) ((_ to_fp 11 53) b_ack!4511))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4510) ((_ to_fp 11 53) x0_ack!4512))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4510) ((_ to_fp 11 53) x1_ack!4508))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4511) ((_ to_fp 11 53) x0_ack!4512))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4511) ((_ to_fp 11 53) x1_ack!4508))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4508)
                    ((_ to_fp 11 53) x0_ack!4512))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4510)
                                   ((_ to_fp 11 53) x0_ack!4512))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4510)
                                   ((_ to_fp 11 53) x0_ack!4512)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4511)
                                   ((_ to_fp 11 53) x0_ack!4512))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4511)
                                   ((_ to_fp 11 53) x0_ack!4512))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4510)
                                   ((_ to_fp 11 53) x0_ack!4512))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4511)
                                   ((_ to_fp 11 53) x0_ack!4512))))))
  (FPCHECK_FMUL_UNDERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
