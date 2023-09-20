(declare-fun limit_ack!540 () (_ BitVec 64))
(declare-fun a_ack!541 () (_ BitVec 64))
(declare-fun b_ack!537 () (_ BitVec 64))
(declare-fun epsabs_ack!539 () (_ BitVec 64))
(declare-fun c_ack!538 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!540)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!537) ((_ to_fp 11 53) a_ack!541))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!539)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!538) ((_ to_fp 11 53) a_ack!541))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!538) ((_ to_fp 11 53) b_ack!537))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!537)
                       ((_ to_fp 11 53) a_ack!541))
               ((_ to_fp 11 53) a_ack!541))
       ((_ to_fp 11 53) b_ack!537)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!537)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!537)
                       ((_ to_fp 11 53) a_ack!541)))
       ((_ to_fp 11 53) a_ack!541)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!538))
                           ((_ to_fp 11 53) b_ack!537))
                   ((_ to_fp 11 53) a_ack!541))))
  (FPCHECK_FDIV_ZERO
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!537)
            ((_ to_fp 11 53) a_ack!541)))))

(check-sat)
(exit)
