(declare-fun x1_ack!6218 () (_ BitVec 64))
(declare-fun x0_ack!6225 () (_ BitVec 64))
(declare-fun x2_ack!6219 () (_ BitVec 64))
(declare-fun b_ack!6224 () (_ BitVec 64))
(declare-fun a_ack!6223 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6220 () (_ BitVec 64))
(declare-fun y1_ack!6221 () (_ BitVec 64))
(declare-fun y2_ack!6222 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6225) ((_ to_fp 11 53) x1_ack!6218)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6218) ((_ to_fp 11 53) x2_ack!6219)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6218)
                       ((_ to_fp 11 53) x0_ack!6225))
               ((_ to_fp 11 53) x0_ack!6225))
       ((_ to_fp 11 53) x1_ack!6218)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6218)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6218)
                       ((_ to_fp 11 53) x0_ack!6225)))
       ((_ to_fp 11 53) x0_ack!6225)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6219)
                       ((_ to_fp 11 53) x1_ack!6218))
               ((_ to_fp 11 53) x1_ack!6218))
       ((_ to_fp 11 53) x2_ack!6219)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6219)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6219)
                       ((_ to_fp 11 53) x1_ack!6218)))
       ((_ to_fp 11 53) x1_ack!6218)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6218)
                    ((_ to_fp 11 53) x0_ack!6225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6219)
                    ((_ to_fp 11 53) x1_ack!6218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6223) ((_ to_fp 11 53) b_ack!6224))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6223) ((_ to_fp 11 53) x0_ack!6225))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6224) ((_ to_fp 11 53) x2_ack!6219))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6223) ((_ to_fp 11 53) b_ack!6224))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6223) ((_ to_fp 11 53) x0_ack!6225))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6223) ((_ to_fp 11 53) x1_ack!6218)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6218) ((_ to_fp 11 53) a_ack!6223))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6224) ((_ to_fp 11 53) x1_ack!6218))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6224) ((_ to_fp 11 53) x2_ack!6219))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6219)
                    ((_ to_fp 11 53) x1_ack!6218))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6222)
                           ((_ to_fp 11 53) y1_ack!6221))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6219)
                                   ((_ to_fp 11 53) x1_ack!6218)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6221)
                           ((_ to_fp 11 53) y0_ack!6220))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6218)
                                   ((_ to_fp 11 53) x0_ack!6225)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6219)
                                   ((_ to_fp 11 53) x1_ack!6218))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6218)
                                   ((_ to_fp 11 53) x0_ack!6225))))))
  (FPCHECK_FSUB_ACCURACY
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
