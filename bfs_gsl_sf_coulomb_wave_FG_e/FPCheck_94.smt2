(declare-fun b_ack!583 () (_ BitVec 64))
(declare-fun c_ack!584 () (_ BitVec 64))
(declare-fun d_ack!585 () (_ BitVec 32))
(declare-fun a_ack!586 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!584) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!584)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!585))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!583) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!586)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!586))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!586)
                       ((_ to_fp 11 53) a_ack!586))
               ((_ to_fp 11 53) a_ack!586))
       ((_ to_fp 11 53) a_ack!586)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!586))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!586)
                       ((_ to_fp 11 53) a_ack!586))
               ((_ to_fp 11 53) a_ack!586))
       ((_ to_fp 11 53) a_ack!586)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!586)
                                   ((_ to_fp 11 53) a_ack!586))))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x3ff0000000000000)))

(check-sat)
(exit)
