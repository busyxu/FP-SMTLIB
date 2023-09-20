(declare-fun limit_ack!6591 () (_ BitVec 64))
(declare-fun a_ack!6592 () (_ BitVec 64))
(declare-fun b_ack!6588 () (_ BitVec 64))
(declare-fun epsabs_ack!6590 () (_ BitVec 64))
(declare-fun c_ack!6589 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6591)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6588) ((_ to_fp 11 53) a_ack!6592))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6590)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6589) ((_ to_fp 11 53) a_ack!6592))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6589) ((_ to_fp 11 53) b_ack!6588))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6588)
                       ((_ to_fp 11 53) a_ack!6592))
               ((_ to_fp 11 53) a_ack!6592))
       ((_ to_fp 11 53) b_ack!6588)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6588)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6588)
                       ((_ to_fp 11 53) a_ack!6592)))
       ((_ to_fp 11 53) a_ack!6592)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6589))
                           ((_ to_fp 11 53) b_ack!6588))
                   ((_ to_fp 11 53) a_ack!6592))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6588)
                                   ((_ to_fp 11 53) a_ack!6592))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6592))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6588)
                                   ((_ to_fp 11 53) a_ack!6592)))
                   ((_ to_fp 11 53) #x3feee8dd4748bf15))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6588)
                                   ((_ to_fp 11 53) a_ack!6592)))
                   a!1)))
  (FPCHECK_FINVALID_SQRT a!2 a!2))))

(check-sat)
(exit)
