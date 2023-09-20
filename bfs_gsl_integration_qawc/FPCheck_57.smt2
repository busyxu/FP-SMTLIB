(declare-fun limit_ack!727 () (_ BitVec 64))
(declare-fun a_ack!728 () (_ BitVec 64))
(declare-fun b_ack!724 () (_ BitVec 64))
(declare-fun epsabs_ack!726 () (_ BitVec 64))
(declare-fun c_ack!725 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!727)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!724) ((_ to_fp 11 53) a_ack!728)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!726)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!725) ((_ to_fp 11 53) a_ack!728))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!725) ((_ to_fp 11 53) b_ack!724))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!725))
                   ((_ to_fp 11 53) a_ack!728))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!724))
                 ((_ to_fp 11 53) b_ack!724))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!725))
                   ((_ to_fp 11 53) a_ack!728))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!724)))
         ((_ to_fp 11 53) b_ack!724))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!725))
                           ((_ to_fp 11 53) a_ack!728))
                   ((_ to_fp 11 53) b_ack!724))))
  (FPCHECK_FDIV_OVERFLOW
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!728)
            ((_ to_fp 11 53) b_ack!724)))))

(check-sat)
(exit)
