(declare-fun a_ack!74 () (_ BitVec 64))
(declare-fun b_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!74))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!73))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!73))
        ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!74))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!74))
            (fp.abs ((_ to_fp 11 53) b_ack!73)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!74)) (fp.abs ((_ to_fp 11 53) b_ack!73))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!74)) ((_ to_fp 11 53) #x5feccccccccccccc)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!74))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!74)
                       ((_ to_fp 11 53) b_ack!73))
               ((_ to_fp 11 53) a_ack!74))
       ((_ to_fp 11 53) b_ack!73)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!73))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!74)
                       ((_ to_fp 11 53) b_ack!73))
               ((_ to_fp 11 53) b_ack!73))
       ((_ to_fp 11 53) a_ack!74)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!74)
                  ((_ to_fp 11 53) b_ack!73)))))

(check-sat)
(exit)
