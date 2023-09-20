(declare-fun x1_ack!6705 () (_ BitVec 64))
(declare-fun x0_ack!6712 () (_ BitVec 64))
(declare-fun x2_ack!6706 () (_ BitVec 64))
(declare-fun b_ack!6711 () (_ BitVec 64))
(declare-fun a_ack!6710 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6707 () (_ BitVec 64))
(declare-fun y1_ack!6708 () (_ BitVec 64))
(declare-fun y2_ack!6709 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6712) ((_ to_fp 11 53) x1_ack!6705)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6705) ((_ to_fp 11 53) x2_ack!6706)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6705)
                       ((_ to_fp 11 53) x0_ack!6712))
               ((_ to_fp 11 53) x0_ack!6712))
       ((_ to_fp 11 53) x1_ack!6705)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6705)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6705)
                       ((_ to_fp 11 53) x0_ack!6712)))
       ((_ to_fp 11 53) x0_ack!6712)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6706)
                       ((_ to_fp 11 53) x1_ack!6705))
               ((_ to_fp 11 53) x1_ack!6705))
       ((_ to_fp 11 53) x2_ack!6706)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6706)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6706)
                       ((_ to_fp 11 53) x1_ack!6705)))
       ((_ to_fp 11 53) x1_ack!6705)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6705)
                    ((_ to_fp 11 53) x0_ack!6712))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6706)
                    ((_ to_fp 11 53) x1_ack!6705))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6710) ((_ to_fp 11 53) b_ack!6711))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6710) ((_ to_fp 11 53) x0_ack!6712))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6711) ((_ to_fp 11 53) x2_ack!6706))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6710) ((_ to_fp 11 53) b_ack!6711))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6710) ((_ to_fp 11 53) x0_ack!6712))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6710) ((_ to_fp 11 53) x1_ack!6705))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6711) ((_ to_fp 11 53) x0_ack!6712))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6711) ((_ to_fp 11 53) x1_ack!6705)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6705) ((_ to_fp 11 53) b_ack!6711))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6705)
                    ((_ to_fp 11 53) x0_ack!6712))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6706)
                    ((_ to_fp 11 53) x1_ack!6705))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6709)
                           ((_ to_fp 11 53) y1_ack!6708))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6706)
                                   ((_ to_fp 11 53) x1_ack!6705)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6708)
                           ((_ to_fp 11 53) y0_ack!6707))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6705)
                                   ((_ to_fp 11 53) x0_ack!6712)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6706)
                                   ((_ to_fp 11 53) x1_ack!6705))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6705)
                                   ((_ to_fp 11 53) x0_ack!6712))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_OVERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
