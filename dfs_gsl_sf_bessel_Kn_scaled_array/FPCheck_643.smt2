(declare-fun a_ack!2702 () (_ BitVec 32))
(declare-fun b_ack!2700 () (_ BitVec 32))
(declare-fun c_ack!2701 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2702 #x00000000)))
(assert (not (bvslt b_ack!2700 a_ack!2702)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2700)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2701) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2701))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2701)
                       ((_ to_fp 11 53) c_ack!2701))
               ((_ to_fp 11 53) c_ack!2701))
       ((_ to_fp 11 53) c_ack!2701)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2701))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2701)
                       ((_ to_fp 11 53) c_ack!2701))
               ((_ to_fp 11 53) c_ack!2701))
       ((_ to_fp 11 53) c_ack!2701)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!2701)
          ((_ to_fp 11 53) c_ack!2701))
  #x3d9d141fcb837472))

(check-sat)
(exit)
