(declare-fun x1_ack!6304 () (_ BitVec 64))
(declare-fun x0_ack!6311 () (_ BitVec 64))
(declare-fun x2_ack!6305 () (_ BitVec 64))
(declare-fun b_ack!6310 () (_ BitVec 64))
(declare-fun a_ack!6309 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6306 () (_ BitVec 64))
(declare-fun y1_ack!6307 () (_ BitVec 64))
(declare-fun y2_ack!6308 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6311) ((_ to_fp 11 53) x1_ack!6304)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6304) ((_ to_fp 11 53) x2_ack!6305)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6304)
                       ((_ to_fp 11 53) x0_ack!6311))
               ((_ to_fp 11 53) x0_ack!6311))
       ((_ to_fp 11 53) x1_ack!6304)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6304)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6304)
                       ((_ to_fp 11 53) x0_ack!6311)))
       ((_ to_fp 11 53) x0_ack!6311)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6305)
                       ((_ to_fp 11 53) x1_ack!6304))
               ((_ to_fp 11 53) x1_ack!6304))
       ((_ to_fp 11 53) x2_ack!6305)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6305)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6305)
                       ((_ to_fp 11 53) x1_ack!6304)))
       ((_ to_fp 11 53) x1_ack!6304)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6304)
                    ((_ to_fp 11 53) x0_ack!6311))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6305)
                    ((_ to_fp 11 53) x1_ack!6304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6309) ((_ to_fp 11 53) b_ack!6310))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6309) ((_ to_fp 11 53) x0_ack!6311))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6310) ((_ to_fp 11 53) x2_ack!6305))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6309) ((_ to_fp 11 53) b_ack!6310))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6309) ((_ to_fp 11 53) x0_ack!6311))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6309) ((_ to_fp 11 53) x1_ack!6304)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6304) ((_ to_fp 11 53) a_ack!6309))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6310) ((_ to_fp 11 53) x1_ack!6304))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6310) ((_ to_fp 11 53) x2_ack!6305))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6305)
                    ((_ to_fp 11 53) x1_ack!6304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6308)
                           ((_ to_fp 11 53) y1_ack!6307))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6305)
                                   ((_ to_fp 11 53) x1_ack!6304)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6307)
                           ((_ to_fp 11 53) y0_ack!6306))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6304)
                                   ((_ to_fp 11 53) x0_ack!6311)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6305)
                                   ((_ to_fp 11 53) x1_ack!6304))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6304)
                                   ((_ to_fp 11 53) x0_ack!6311))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6305)
                    ((_ to_fp 11 53) x1_ack!6304)))))))

(check-sat)
(exit)
