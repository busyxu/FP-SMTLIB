(declare-fun x1_ack!6080 () (_ BitVec 64))
(declare-fun x0_ack!6087 () (_ BitVec 64))
(declare-fun x2_ack!6081 () (_ BitVec 64))
(declare-fun b_ack!6086 () (_ BitVec 64))
(declare-fun a_ack!6085 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6082 () (_ BitVec 64))
(declare-fun y1_ack!6083 () (_ BitVec 64))
(declare-fun y2_ack!6084 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6087) ((_ to_fp 11 53) x1_ack!6080)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6080) ((_ to_fp 11 53) x2_ack!6081)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6080)
                       ((_ to_fp 11 53) x0_ack!6087))
               ((_ to_fp 11 53) x0_ack!6087))
       ((_ to_fp 11 53) x1_ack!6080)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6080)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6080)
                       ((_ to_fp 11 53) x0_ack!6087)))
       ((_ to_fp 11 53) x0_ack!6087)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6081)
                       ((_ to_fp 11 53) x1_ack!6080))
               ((_ to_fp 11 53) x1_ack!6080))
       ((_ to_fp 11 53) x2_ack!6081)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6081)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6081)
                       ((_ to_fp 11 53) x1_ack!6080)))
       ((_ to_fp 11 53) x1_ack!6080)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6080)
                    ((_ to_fp 11 53) x0_ack!6087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6081)
                    ((_ to_fp 11 53) x1_ack!6080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6085) ((_ to_fp 11 53) b_ack!6086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6085) ((_ to_fp 11 53) x0_ack!6087))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6086) ((_ to_fp 11 53) x2_ack!6081))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6085) ((_ to_fp 11 53) b_ack!6086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6085) ((_ to_fp 11 53) x0_ack!6087))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6085) ((_ to_fp 11 53) x1_ack!6080)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6080) ((_ to_fp 11 53) a_ack!6085))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6086) ((_ to_fp 11 53) x1_ack!6080))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6086) ((_ to_fp 11 53) x2_ack!6081))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6081)
                    ((_ to_fp 11 53) x1_ack!6080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6084)
                           ((_ to_fp 11 53) y1_ack!6083))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6081)
                                   ((_ to_fp 11 53) x1_ack!6080)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6083)
                           ((_ to_fp 11 53) y0_ack!6082))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6080)
                                   ((_ to_fp 11 53) x0_ack!6087)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6081)
                                   ((_ to_fp 11 53) x1_ack!6080))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6080)
                                   ((_ to_fp 11 53) x0_ack!6087))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!6081)
            ((_ to_fp 11 53) x1_ack!6080))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
