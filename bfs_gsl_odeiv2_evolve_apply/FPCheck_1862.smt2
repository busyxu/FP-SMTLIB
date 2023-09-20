(declare-fun t_ack!10777 () (_ BitVec 64))
(declare-fun t1_ack!10778 () (_ BitVec 64))
(declare-fun h_ack!10779 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10778)
                    ((_ to_fp 11 53) t_ack!10777))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10778)
                    ((_ to_fp 11 53) t_ack!10777))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10778)
                ((_ to_fp 11 53) t_ack!10777))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10779)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10778)
                    ((_ to_fp 11 53) t_ack!10777)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10778)
                    ((_ to_fp 11 53) t_ack!10777))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!10777
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc2e147ae147ae1)
          ((_ to_fp 11 53) h_ack!10779))))

(check-sat)
(exit)
