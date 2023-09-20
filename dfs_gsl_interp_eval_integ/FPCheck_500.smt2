(declare-fun x1_ack!6256 () (_ BitVec 64))
(declare-fun x0_ack!6263 () (_ BitVec 64))
(declare-fun x2_ack!6257 () (_ BitVec 64))
(declare-fun b_ack!6262 () (_ BitVec 64))
(declare-fun a_ack!6261 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6258 () (_ BitVec 64))
(declare-fun y1_ack!6259 () (_ BitVec 64))
(declare-fun y2_ack!6260 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6263) ((_ to_fp 11 53) x1_ack!6256)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6256) ((_ to_fp 11 53) x2_ack!6257)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6256)
                       ((_ to_fp 11 53) x0_ack!6263))
               ((_ to_fp 11 53) x0_ack!6263))
       ((_ to_fp 11 53) x1_ack!6256)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6256)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6256)
                       ((_ to_fp 11 53) x0_ack!6263)))
       ((_ to_fp 11 53) x0_ack!6263)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6257)
                       ((_ to_fp 11 53) x1_ack!6256))
               ((_ to_fp 11 53) x1_ack!6256))
       ((_ to_fp 11 53) x2_ack!6257)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6257)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6257)
                       ((_ to_fp 11 53) x1_ack!6256)))
       ((_ to_fp 11 53) x1_ack!6256)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6256)
                    ((_ to_fp 11 53) x0_ack!6263))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6257)
                    ((_ to_fp 11 53) x1_ack!6256))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6261) ((_ to_fp 11 53) b_ack!6262))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6261) ((_ to_fp 11 53) x0_ack!6263))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6262) ((_ to_fp 11 53) x2_ack!6257))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6261) ((_ to_fp 11 53) b_ack!6262))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6261) ((_ to_fp 11 53) x0_ack!6263))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6261) ((_ to_fp 11 53) x1_ack!6256)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6256) ((_ to_fp 11 53) a_ack!6261))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6262) ((_ to_fp 11 53) x1_ack!6256))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6262) ((_ to_fp 11 53) x2_ack!6257))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6257)
                    ((_ to_fp 11 53) x1_ack!6256))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6260)
                           ((_ to_fp 11 53) y1_ack!6259))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6257)
                                   ((_ to_fp 11 53) x1_ack!6256)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6259)
                           ((_ to_fp 11 53) y0_ack!6258))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6256)
                                   ((_ to_fp 11 53) x0_ack!6263)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6257)
                                   ((_ to_fp 11 53) x1_ack!6256))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6256)
                                   ((_ to_fp 11 53) x0_ack!6263))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6257)
                    ((_ to_fp 11 53) x1_ack!6256)))))))

(check-sat)
(exit)
