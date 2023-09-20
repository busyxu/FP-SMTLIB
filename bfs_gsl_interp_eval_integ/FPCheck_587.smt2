(declare-fun x1_ack!7367 () (_ BitVec 64))
(declare-fun x0_ack!7371 () (_ BitVec 64))
(declare-fun x2_ack!7368 () (_ BitVec 64))
(declare-fun b_ack!7370 () (_ BitVec 64))
(declare-fun a_ack!7369 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7371) ((_ to_fp 11 53) x1_ack!7367)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7367) ((_ to_fp 11 53) x2_ack!7368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7367)
                       ((_ to_fp 11 53) x0_ack!7371))
               ((_ to_fp 11 53) x0_ack!7371))
       ((_ to_fp 11 53) x1_ack!7367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7367)
                       ((_ to_fp 11 53) x0_ack!7371)))
       ((_ to_fp 11 53) x0_ack!7371)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7368)
                       ((_ to_fp 11 53) x1_ack!7367))
               ((_ to_fp 11 53) x1_ack!7367))
       ((_ to_fp 11 53) x2_ack!7368)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7368)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7368)
                       ((_ to_fp 11 53) x1_ack!7367)))
       ((_ to_fp 11 53) x1_ack!7367)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7367)
                    ((_ to_fp 11 53) x0_ack!7371))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7368)
                    ((_ to_fp 11 53) x1_ack!7367))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7369) ((_ to_fp 11 53) b_ack!7370))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7369) ((_ to_fp 11 53) x0_ack!7371))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7370) ((_ to_fp 11 53) x2_ack!7368))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7369) ((_ to_fp 11 53) b_ack!7370))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7369) ((_ to_fp 11 53) x0_ack!7371))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7369) ((_ to_fp 11 53) x1_ack!7367))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7370) ((_ to_fp 11 53) x0_ack!7371))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7370) ((_ to_fp 11 53) x1_ack!7367)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7367) ((_ to_fp 11 53) b_ack!7370))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7367)
                    ((_ to_fp 11 53) x0_ack!7371))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7368)
                    ((_ to_fp 11 53) x1_ack!7367))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7367)
                                   ((_ to_fp 11 53) x1_ack!7367))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7367)
                                   ((_ to_fp 11 53) x1_ack!7367)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7370)
                                   ((_ to_fp 11 53) x1_ack!7367))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7370)
                                   ((_ to_fp 11 53) x1_ack!7367))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7367)
                    ((_ to_fp 11 53) x1_ack!7367))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7370)
                    ((_ to_fp 11 53) x1_ack!7367))))))

(check-sat)
(exit)
