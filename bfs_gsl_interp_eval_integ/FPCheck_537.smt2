(declare-fun x1_ack!6761 () (_ BitVec 64))
(declare-fun x0_ack!6768 () (_ BitVec 64))
(declare-fun x2_ack!6762 () (_ BitVec 64))
(declare-fun b_ack!6767 () (_ BitVec 64))
(declare-fun a_ack!6766 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6763 () (_ BitVec 64))
(declare-fun y1_ack!6764 () (_ BitVec 64))
(declare-fun y2_ack!6765 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6768) ((_ to_fp 11 53) x1_ack!6761)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6761) ((_ to_fp 11 53) x2_ack!6762)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6761)
                       ((_ to_fp 11 53) x0_ack!6768))
               ((_ to_fp 11 53) x0_ack!6768))
       ((_ to_fp 11 53) x1_ack!6761)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6761)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6761)
                       ((_ to_fp 11 53) x0_ack!6768)))
       ((_ to_fp 11 53) x0_ack!6768)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6762)
                       ((_ to_fp 11 53) x1_ack!6761))
               ((_ to_fp 11 53) x1_ack!6761))
       ((_ to_fp 11 53) x2_ack!6762)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6762)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6762)
                       ((_ to_fp 11 53) x1_ack!6761)))
       ((_ to_fp 11 53) x1_ack!6761)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6761)
                    ((_ to_fp 11 53) x0_ack!6768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6762)
                    ((_ to_fp 11 53) x1_ack!6761))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6766) ((_ to_fp 11 53) b_ack!6767))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6766) ((_ to_fp 11 53) x0_ack!6768))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6767) ((_ to_fp 11 53) x2_ack!6762))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6766) ((_ to_fp 11 53) b_ack!6767))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6766) ((_ to_fp 11 53) x0_ack!6768))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6766) ((_ to_fp 11 53) x1_ack!6761))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6767) ((_ to_fp 11 53) x0_ack!6768))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6767) ((_ to_fp 11 53) x1_ack!6761)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6761) ((_ to_fp 11 53) b_ack!6767))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6761)
                    ((_ to_fp 11 53) x0_ack!6768))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6762)
                    ((_ to_fp 11 53) x1_ack!6761))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6765)
                           ((_ to_fp 11 53) y1_ack!6764))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6762)
                                   ((_ to_fp 11 53) x1_ack!6761)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6764)
                           ((_ to_fp 11 53) y0_ack!6763))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6761)
                                   ((_ to_fp 11 53) x0_ack!6768)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6762)
                                   ((_ to_fp 11 53) x1_ack!6761))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6761)
                                   ((_ to_fp 11 53) x0_ack!6768))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!6762)
            ((_ to_fp 11 53) x1_ack!6761))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
