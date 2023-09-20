(declare-fun x1_ack!6009 () (_ BitVec 64))
(declare-fun x0_ack!6013 () (_ BitVec 64))
(declare-fun x2_ack!6010 () (_ BitVec 64))
(declare-fun b_ack!6012 () (_ BitVec 64))
(declare-fun a_ack!6011 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6013) ((_ to_fp 11 53) x1_ack!6009)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6009) ((_ to_fp 11 53) x2_ack!6010)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6009)
                       ((_ to_fp 11 53) x0_ack!6013))
               ((_ to_fp 11 53) x0_ack!6013))
       ((_ to_fp 11 53) x1_ack!6009)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6009)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6009)
                       ((_ to_fp 11 53) x0_ack!6013)))
       ((_ to_fp 11 53) x0_ack!6013)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6010)
                       ((_ to_fp 11 53) x1_ack!6009))
               ((_ to_fp 11 53) x1_ack!6009))
       ((_ to_fp 11 53) x2_ack!6010)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6010)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6010)
                       ((_ to_fp 11 53) x1_ack!6009)))
       ((_ to_fp 11 53) x1_ack!6009)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6009)
                    ((_ to_fp 11 53) x0_ack!6013))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6010)
                    ((_ to_fp 11 53) x1_ack!6009))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6011) ((_ to_fp 11 53) b_ack!6012))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6011) ((_ to_fp 11 53) x0_ack!6013))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6012) ((_ to_fp 11 53) x2_ack!6010))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6011) ((_ to_fp 11 53) b_ack!6012))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6011) ((_ to_fp 11 53) x0_ack!6013))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6011) ((_ to_fp 11 53) x1_ack!6009))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6012) ((_ to_fp 11 53) x0_ack!6013))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6012) ((_ to_fp 11 53) x1_ack!6009)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6009) ((_ to_fp 11 53) b_ack!6012))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6009)
                    ((_ to_fp 11 53) x0_ack!6013))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6011)
                                   ((_ to_fp 11 53) x0_ack!6013))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6011)
                                   ((_ to_fp 11 53) x0_ack!6013)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6009)
                                   ((_ to_fp 11 53) x0_ack!6013))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6009)
                                   ((_ to_fp 11 53) x0_ack!6013))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6011)
                    ((_ to_fp 11 53) x0_ack!6013))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6009)
                    ((_ to_fp 11 53) x0_ack!6013))))))

(check-sat)
(exit)
