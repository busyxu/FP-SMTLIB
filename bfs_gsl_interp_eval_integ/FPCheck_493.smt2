(declare-fun x1_ack!6190 () (_ BitVec 64))
(declare-fun x0_ack!6194 () (_ BitVec 64))
(declare-fun x2_ack!6191 () (_ BitVec 64))
(declare-fun b_ack!6193 () (_ BitVec 64))
(declare-fun a_ack!6192 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6194) ((_ to_fp 11 53) x1_ack!6190)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6190) ((_ to_fp 11 53) x2_ack!6191)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6190)
                       ((_ to_fp 11 53) x0_ack!6194))
               ((_ to_fp 11 53) x0_ack!6194))
       ((_ to_fp 11 53) x1_ack!6190)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6190)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6190)
                       ((_ to_fp 11 53) x0_ack!6194)))
       ((_ to_fp 11 53) x0_ack!6194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6191)
                       ((_ to_fp 11 53) x1_ack!6190))
               ((_ to_fp 11 53) x1_ack!6190))
       ((_ to_fp 11 53) x2_ack!6191)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6191)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6191)
                       ((_ to_fp 11 53) x1_ack!6190)))
       ((_ to_fp 11 53) x1_ack!6190)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6190)
                    ((_ to_fp 11 53) x0_ack!6194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6191)
                    ((_ to_fp 11 53) x1_ack!6190))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6192) ((_ to_fp 11 53) b_ack!6193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6192) ((_ to_fp 11 53) x0_ack!6194))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6193) ((_ to_fp 11 53) x2_ack!6191))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6192) ((_ to_fp 11 53) b_ack!6193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6192) ((_ to_fp 11 53) x0_ack!6194))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6192) ((_ to_fp 11 53) x1_ack!6190))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6193) ((_ to_fp 11 53) x0_ack!6194))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6193) ((_ to_fp 11 53) x1_ack!6190)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6190) ((_ to_fp 11 53) b_ack!6193))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6190)
                    ((_ to_fp 11 53) x0_ack!6194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6192)
                  ((_ to_fp 11 53) x0_ack!6194))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!6192)
                  ((_ to_fp 11 53) x0_ack!6194)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6190)
                  ((_ to_fp 11 53) x0_ack!6194))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!6190)
                  ((_ to_fp 11 53) x0_ack!6194)))))

(check-sat)
(exit)
