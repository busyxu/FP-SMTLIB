(declare-fun limit_ack!6516 () (_ BitVec 64))
(declare-fun a_ack!6517 () (_ BitVec 64))
(declare-fun b_ack!6513 () (_ BitVec 64))
(declare-fun epsabs_ack!6515 () (_ BitVec 64))
(declare-fun c_ack!6514 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6516)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6513) ((_ to_fp 11 53) a_ack!6517))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6515)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6514) ((_ to_fp 11 53) a_ack!6517))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6514) ((_ to_fp 11 53) b_ack!6513))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6513)
                       ((_ to_fp 11 53) a_ack!6517))
               ((_ to_fp 11 53) a_ack!6517))
       ((_ to_fp 11 53) b_ack!6513)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6513)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6513)
                       ((_ to_fp 11 53) a_ack!6517)))
       ((_ to_fp 11 53) a_ack!6517)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6514))
                           ((_ to_fp 11 53) b_ack!6513))
                   ((_ to_fp 11 53) a_ack!6517))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6513)
                                   ((_ to_fp 11 53) a_ack!6517))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6517))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6513)
                                   ((_ to_fp 11 53) a_ack!6517)))
                   ((_ to_fp 11 53) #x3feee8dd4748bf15))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fe0000000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6513)
                    ((_ to_fp 11 53) a_ack!6517)))
    a!1)))

(check-sat)
(exit)
