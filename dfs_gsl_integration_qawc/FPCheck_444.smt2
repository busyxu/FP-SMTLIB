(declare-fun limit_ack!6606 () (_ BitVec 64))
(declare-fun a_ack!6607 () (_ BitVec 64))
(declare-fun b_ack!6603 () (_ BitVec 64))
(declare-fun epsabs_ack!6605 () (_ BitVec 64))
(declare-fun c_ack!6604 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!6606)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6603) ((_ to_fp 11 53) a_ack!6607))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6605)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6604) ((_ to_fp 11 53) a_ack!6607))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6604) ((_ to_fp 11 53) b_ack!6603))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6603)
                       ((_ to_fp 11 53) a_ack!6607))
               ((_ to_fp 11 53) a_ack!6607))
       ((_ to_fp 11 53) b_ack!6603)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6603)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6603)
                       ((_ to_fp 11 53) a_ack!6607)))
       ((_ to_fp 11 53) a_ack!6607)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6604))
                           ((_ to_fp 11 53) b_ack!6603))
                   ((_ to_fp 11 53) a_ack!6607))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6603)
                                   ((_ to_fp 11 53) a_ack!6607))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6607))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6603)
                                   ((_ to_fp 11 53) a_ack!6607)))
                   ((_ to_fp 11 53) #x3feee8dd4748bf15))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6603)
                                   ((_ to_fp 11 53) a_ack!6607)))
                   a!1)))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x1ff914f5df982c5d))))

(check-sat)
(exit)
