(declare-fun x1_ack!6710 () (_ BitVec 64))
(declare-fun x0_ack!6714 () (_ BitVec 64))
(declare-fun x2_ack!6711 () (_ BitVec 64))
(declare-fun b_ack!6713 () (_ BitVec 64))
(declare-fun a_ack!6712 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6714) ((_ to_fp 11 53) x1_ack!6710)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6710) ((_ to_fp 11 53) x2_ack!6711)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6710)
                       ((_ to_fp 11 53) x0_ack!6714))
               ((_ to_fp 11 53) x0_ack!6714))
       ((_ to_fp 11 53) x1_ack!6710)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6710)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6710)
                       ((_ to_fp 11 53) x0_ack!6714)))
       ((_ to_fp 11 53) x0_ack!6714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6711)
                       ((_ to_fp 11 53) x1_ack!6710))
               ((_ to_fp 11 53) x1_ack!6710))
       ((_ to_fp 11 53) x2_ack!6711)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6711)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6711)
                       ((_ to_fp 11 53) x1_ack!6710)))
       ((_ to_fp 11 53) x1_ack!6710)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6710)
                    ((_ to_fp 11 53) x0_ack!6714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6711)
                    ((_ to_fp 11 53) x1_ack!6710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6712) ((_ to_fp 11 53) b_ack!6713))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6712) ((_ to_fp 11 53) x0_ack!6714))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6713) ((_ to_fp 11 53) x2_ack!6711))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6712) ((_ to_fp 11 53) b_ack!6713))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6712) ((_ to_fp 11 53) x0_ack!6714))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6712) ((_ to_fp 11 53) x1_ack!6710)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6710) ((_ to_fp 11 53) a_ack!6712))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6713) ((_ to_fp 11 53) x1_ack!6710))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6713) ((_ to_fp 11 53) x2_ack!6711))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6711)
                    ((_ to_fp 11 53) x1_ack!6710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6712)
                                   ((_ to_fp 11 53) x1_ack!6710))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6712)
                                   ((_ to_fp 11 53) x1_ack!6710)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6713)
                                   ((_ to_fp 11 53) x1_ack!6710))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6713)
                                   ((_ to_fp 11 53) x1_ack!6710))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6712)
                    ((_ to_fp 11 53) x1_ack!6710))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6713)
                    ((_ to_fp 11 53) x1_ack!6710))))))

(check-sat)
(exit)
