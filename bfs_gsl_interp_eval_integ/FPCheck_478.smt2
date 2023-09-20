(declare-fun x1_ack!6014 () (_ BitVec 64))
(declare-fun x0_ack!6018 () (_ BitVec 64))
(declare-fun x2_ack!6015 () (_ BitVec 64))
(declare-fun b_ack!6017 () (_ BitVec 64))
(declare-fun a_ack!6016 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6018) ((_ to_fp 11 53) x1_ack!6014)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6014) ((_ to_fp 11 53) x2_ack!6015)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6014)
                       ((_ to_fp 11 53) x0_ack!6018))
               ((_ to_fp 11 53) x0_ack!6018))
       ((_ to_fp 11 53) x1_ack!6014)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6014)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6014)
                       ((_ to_fp 11 53) x0_ack!6018)))
       ((_ to_fp 11 53) x0_ack!6018)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6015)
                       ((_ to_fp 11 53) x1_ack!6014))
               ((_ to_fp 11 53) x1_ack!6014))
       ((_ to_fp 11 53) x2_ack!6015)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6015)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6015)
                       ((_ to_fp 11 53) x1_ack!6014)))
       ((_ to_fp 11 53) x1_ack!6014)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6014)
                    ((_ to_fp 11 53) x0_ack!6018))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6015)
                    ((_ to_fp 11 53) x1_ack!6014))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6016) ((_ to_fp 11 53) b_ack!6017))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6016) ((_ to_fp 11 53) x0_ack!6018))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6017) ((_ to_fp 11 53) x2_ack!6015))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6016) ((_ to_fp 11 53) b_ack!6017))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6016) ((_ to_fp 11 53) x0_ack!6018))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6016) ((_ to_fp 11 53) x1_ack!6014))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6017) ((_ to_fp 11 53) x0_ack!6018))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6017) ((_ to_fp 11 53) x1_ack!6014)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6014) ((_ to_fp 11 53) b_ack!6017))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6014)
                    ((_ to_fp 11 53) x0_ack!6018))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6016)
                                   ((_ to_fp 11 53) x0_ack!6018))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6016)
                                   ((_ to_fp 11 53) x0_ack!6018)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6014)
                                   ((_ to_fp 11 53) x0_ack!6018))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6014)
                                   ((_ to_fp 11 53) x0_ack!6018))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6016)
                                   ((_ to_fp 11 53) x0_ack!6018))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6014)
                                   ((_ to_fp 11 53) x0_ack!6018))))))
  (FPCHECK_FMUL_OVERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
