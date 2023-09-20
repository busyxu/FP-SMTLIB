(declare-fun x1_ack!6622 () (_ BitVec 64))
(declare-fun x0_ack!6626 () (_ BitVec 64))
(declare-fun x2_ack!6623 () (_ BitVec 64))
(declare-fun b_ack!6625 () (_ BitVec 64))
(declare-fun a_ack!6624 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6626) ((_ to_fp 11 53) x1_ack!6622)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6622) ((_ to_fp 11 53) x2_ack!6623)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6622)
                       ((_ to_fp 11 53) x0_ack!6626))
               ((_ to_fp 11 53) x0_ack!6626))
       ((_ to_fp 11 53) x1_ack!6622)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6622)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6622)
                       ((_ to_fp 11 53) x0_ack!6626)))
       ((_ to_fp 11 53) x0_ack!6626)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6623)
                       ((_ to_fp 11 53) x1_ack!6622))
               ((_ to_fp 11 53) x1_ack!6622))
       ((_ to_fp 11 53) x2_ack!6623)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6623)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6623)
                       ((_ to_fp 11 53) x1_ack!6622)))
       ((_ to_fp 11 53) x1_ack!6622)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6622)
                    ((_ to_fp 11 53) x0_ack!6626))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6623)
                    ((_ to_fp 11 53) x1_ack!6622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6624) ((_ to_fp 11 53) b_ack!6625))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6624) ((_ to_fp 11 53) x0_ack!6626))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6625) ((_ to_fp 11 53) x2_ack!6623))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6624) ((_ to_fp 11 53) b_ack!6625))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6624) ((_ to_fp 11 53) x0_ack!6626))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6624) ((_ to_fp 11 53) x1_ack!6622)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6622) ((_ to_fp 11 53) a_ack!6624))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6625) ((_ to_fp 11 53) x1_ack!6622))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6625) ((_ to_fp 11 53) x2_ack!6623)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6623)
                    ((_ to_fp 11 53) x1_ack!6622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6624)
                       ((_ to_fp 11 53) x1_ack!6622))
               ((_ to_fp 11 53) x1_ack!6622))
       ((_ to_fp 11 53) a_ack!6624)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!6624)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6624)
                       ((_ to_fp 11 53) x1_ack!6622)))
       ((_ to_fp 11 53) x1_ack!6622)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!6624)
                                  ((_ to_fp 11 53) x1_ack!6622)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6624)
                                   ((_ to_fp 11 53) x1_ack!6622))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6624)
                                   ((_ to_fp 11 53) x1_ack!6622)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6624)
                           ((_ to_fp 11 53) x1_ack!6622)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!6624)
                 ((_ to_fp 11 53) x1_ack!6622)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!6624)
                                  ((_ to_fp 11 53) x1_ack!6622)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6624)
                                   ((_ to_fp 11 53) x1_ack!6622))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6624)
                                   ((_ to_fp 11 53) x1_ack!6622)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!6624)
                           ((_ to_fp 11 53) x1_ack!6622)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!6624)
                 ((_ to_fp 11 53) x1_ack!6622)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6625)
          ((_ to_fp 11 53) x1_ack!6622))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!6625)
          ((_ to_fp 11 53) x1_ack!6622))))

(check-sat)
(exit)
