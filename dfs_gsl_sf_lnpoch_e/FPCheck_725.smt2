(declare-fun a_ack!2475 () (_ BitVec 64))
(declare-fun b_ack!2474 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2475)
                     ((_ to_fp 11 53) b_ack!2474))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2474) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2474))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2475))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2475) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2475)
                       ((_ to_fp 11 53) b_ack!2474))
               ((_ to_fp 11 53) a_ack!2475))
       ((_ to_fp 11 53) b_ack!2474)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2475)
                       ((_ to_fp 11 53) b_ack!2474))
               ((_ to_fp 11 53) b_ack!2474))
       ((_ to_fp 11 53) a_ack!2475)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2475)
                    ((_ to_fp 11 53) b_ack!2474))
            ((_ to_fp 11 53) #x4065600000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2475)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2475)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #xbff007228b4cd147))

(check-sat)
(exit)
