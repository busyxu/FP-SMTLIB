(declare-fun x1_ack!6720 () (_ BitVec 64))
(declare-fun x0_ack!6724 () (_ BitVec 64))
(declare-fun x2_ack!6721 () (_ BitVec 64))
(declare-fun b_ack!6723 () (_ BitVec 64))
(declare-fun a_ack!6722 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6724) ((_ to_fp 11 53) x1_ack!6720)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6720) ((_ to_fp 11 53) x2_ack!6721)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6720)
                       ((_ to_fp 11 53) x0_ack!6724))
               ((_ to_fp 11 53) x0_ack!6724))
       ((_ to_fp 11 53) x1_ack!6720)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6720)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6720)
                       ((_ to_fp 11 53) x0_ack!6724)))
       ((_ to_fp 11 53) x0_ack!6724)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6721)
                       ((_ to_fp 11 53) x1_ack!6720))
               ((_ to_fp 11 53) x1_ack!6720))
       ((_ to_fp 11 53) x2_ack!6721)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6721)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6721)
                       ((_ to_fp 11 53) x1_ack!6720)))
       ((_ to_fp 11 53) x1_ack!6720)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6720)
                    ((_ to_fp 11 53) x0_ack!6724))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6721)
                    ((_ to_fp 11 53) x1_ack!6720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6722) ((_ to_fp 11 53) b_ack!6723))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6722) ((_ to_fp 11 53) x0_ack!6724))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6723) ((_ to_fp 11 53) x2_ack!6721))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6722) ((_ to_fp 11 53) b_ack!6723))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6722) ((_ to_fp 11 53) x0_ack!6724))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6722) ((_ to_fp 11 53) x1_ack!6720)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6720) ((_ to_fp 11 53) a_ack!6722))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6723) ((_ to_fp 11 53) x1_ack!6720))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6723) ((_ to_fp 11 53) x2_ack!6721))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6721)
                    ((_ to_fp 11 53) x1_ack!6720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6722)
                                   ((_ to_fp 11 53) x1_ack!6720))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6722)
                                   ((_ to_fp 11 53) x1_ack!6720)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6723)
                                   ((_ to_fp 11 53) x1_ack!6720))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6723)
                                   ((_ to_fp 11 53) x1_ack!6720))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6722)
                    ((_ to_fp 11 53) x1_ack!6720))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6723)
                    ((_ to_fp 11 53) x1_ack!6720))))))

(check-sat)
(exit)
